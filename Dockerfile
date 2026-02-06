# Use the official playwright docker image
FROM mcr.microsoft.com/playwright:v1.58.2

# Install unzip and curl (required by bun)
# Install rsync (required by JamesIves/github-pages-deploy-action)
# Install the gh CLI (very useful sometimes)
RUN apt-get update && apt-get install -y \
    unzip \
    curl \
    rsync \
    gh \
    && rm -rf /var/lib/apt/lists/*

