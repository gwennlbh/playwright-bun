import requests
from subprocess import run

page = 1
all_releases = requests.get(
    "https://api.github.com/repos/microsoft/playwright/releases?per_page=100"
).json()

while True:
    page += 1
    print(f"Fetching page {page}...")
    more = requests.get(
        f"https://api.github.com/repos/microsoft/playwright/releases?per_page=100&page={page}"
    ).json()

    if not isinstance(more, list) or len(more) == 0:
        break

    all_releases.extend(more)

tags = [r["tag_name"] for r in all_releases]
tags.reverse()

print(tags)
    

for tag in tags:
    run(["gh", "workflow", "run", "build.yml", "-f", f"tag={tag}"])
