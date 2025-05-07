# planikun-finance-app

planikun-finance-app is an Typescript frontend project using Angular framework. This project handles the public site logic for Planikun Finance related initiatives.

## Table of Contents

1. [Setup](#setup)
2. [Build](#build)
3. [Serve](#serve)
4. [Deploy](#deploy)

## Setup

You'll need a recent version of the following:

- [nvm](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating) (with node >= 22.0.0)
- [bun](https://bun.sh/docs/installation) (>= 1.2.7)
- [angular-cli](https://github.com/angular/angular-cli?tab=readme-ov-file#development-setup) (>= 19.2.0)

Then you can proceed to install all NPM packages:

```bash
bun install
```

## Build

By running the project it will trigger a build, but if you want to build it beforehand:

```bash
# Replace <env> with the desired environment: local, dev and prod
bun run build <env>
```

## Serve

Angular serve command will start the server and watch any changes been done and automatically refreshes your browser:

```bash
# Replace <env> with the desired environment: local, dev, staging and prod
bun run serve <env>
```

## Deploy

Deployments are done by triggering Google Cloud Build, go to the corresponding project and trigger a build.
