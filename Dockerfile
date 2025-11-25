# Use the official playwright docker image
FROM mcr.microsoft.com/playwright:v1.57.0

# Install unzip and curl (required by bun)
# Install rsync (required by JamesIves/github-pages-deploy-action)
RUN apt-get update && apt-get install -y \
    unzip \
    curl \
    rsync \
    && rm -rf /var/lib/apt/lists/*
