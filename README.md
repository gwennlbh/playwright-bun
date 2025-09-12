# Usage

```yaml
jobs:
  my-job:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/gwennlbh/playwright-bun:v1.55.0-noble
      options: --user 1001
    steps:
      - uses: actions/checkout@v5
      - uses: oven-sh/setup-bun@v2
        with:
          bun-version: 'whatever bun version you want'
```

A [workflow](https://github.com/gwennlbh/playwright-bun/actions/workflows/build.yml), together with [Renovate](https://github.com/gwennlbh/playwright-bun/issues/1) ensures that the image is kept up-to-date
