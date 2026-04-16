# Odoo

[![GitHub Pages](https://img.shields.io/badge/%20-FFFFFF?style=social&logo=githubpages&logoColor=000000&logoSize=auto)](https://metachannelcorp.github.io/Odoo/)
[![GitHub Stars](https://img.shields.io/github/stars/MetaChannelCorp/Odoo?style=social&logo=github&logoColor=000000&label=Stars&labelColor=FFFFFF&color=FFFFFF)](https://github.com/MetaChannelCorp/Odoo/stargazers)

[![Docker Container](https://img.shields.io/badge/Nginx-2560FF?style=flat&logo=docker&logoColor=FFFFFF)](https://github.com/MetaChannelCorp/Odoo/pkgs/container/meta-od-nginx)
[![Docker Pulls](https://img.shields.io/docker/pulls/fjrodafo/meta-od-nginx?style=flat&logo=docker&logoColor=FFFFFF&label=Pulls&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/meta-od-nginx)
[![Image Size](https://img.shields.io/docker/image-size/fjrodafo/meta-od-nginx?style=flat&logo=docker&logoColor=FFFFFF&label=Size&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/meta-od-nginx)

## Index

1. [Introduction](#introduction)
2. [Project structure](#project-structure)
3. [Clone the repository](#clone-the-repository)
4. [Set up the project](#set-up-the-project)
5. [Hosts configuration](#hosts-configuration)
6. [Docker + Odoo](#docker--odoo)

## Introduction

A simple Docker setup for Odoo!

This project has been developed on a [Linux](https://github.com/torvalds/linux) system. To learn more about the system, visit the [Dotfiles](https://github.com/FJrodafo/Dotfiles) repository.

## Project structure

```
/
├── docs/
│   └── *.md
├── nginx/
│   ├── conf.d/
│   │   └── default.config
│   └── Dockerfile
├── odoo/
│   └── odoo.conf
├── CONTRIBUTING
├── LICENSE
├── .dockerignore
├── .env
└── docker-compose.yaml
```

## Clone the repository

Open a terminal in the directory where you store your repositories and clone it with the following command:

```shell
# HTTPS
git clone https://github.com/MetaChannelCorp/Odoo.git
cd Odoo/
```

```shell
# SSH
git clone git@github.com:MetaChannelCorp/Odoo.git
cd Odoo/
```

## Set up the project

Copy `.env.example` to `.env` and fill the credentials:

```shell
cp .env.example .env
nano .env
```

Do the same for `odoo.conf.example`, copy it and fill the credentials:

```shell
cp odoo/odoo.conf.example odoo/odoo.conf
nano odoo/odoo.conf
```

## Hosts configuration

A custom local domain is required to access Odoo.

```shell
sudo nano /etc/hosts
```

Add the following lines to your `/etc/hosts` file:

```conf
127.0.0.1	od.metachannelcorp.com	od.metachannelcorporation.com
127.0.0.1	od.metachannelcorp.ie	od.metachannelcorporation.ie
```

## Docker + Odoo

You can find a Docker image of this project ready to be pulled on [GitHub Packages](https://github.com/MetaChannelCorp/Odoo/pkgs/container/meta-od-nginx) or [Docker Hub](https://hub.docker.com/r/fjrodafo/meta-od-nginx) official website!

Pull the latest image with the following commands:

```shell
# GitHub Packages
docker pull ghcr.io/metachannelcorp/meta-od-nginx:latest
```

```shell
# Docker Hub
docker pull fjrodafo/meta-od-nginx:latest
```

### Run with Docker Compose (Recommended)

Make sure you have created and configured the `.env` and `odoo.conf` files correctly before continuing.

Build the container:

```shell
docker compose build
```

> [!NOTE]
> 
> If you want to build the image locally, uncomment the `build` section in `docker-compose.yaml` and run `docker compose build`. Otherwise, skip directly to the next step.

Run the container:

```shell
docker compose up -d
```

> [!NOTE]
> 
> Odoo: [http://od.metachannelcorp.com](http://od.metachannelcorp.com)

Check XML-RCP:

```shell
curl -s http://od.metachannelcorp.com/xmlrpc/2/common -d "<?xml version='1.0'?><methodCall><methodName>version</methodName><params></params></methodCall>" -H "Content-Type: text/xml"
```

Stop the Container:

```shell
docker compose down
```

### Build & Push (Ignore this subsection)

```shell
docker build \
  -t ghcr.io/metachannelcorp/meta-od-nginx:1 \
  -t ghcr.io/metachannelcorp/meta-od-nginx:1.0 \
  -t ghcr.io/metachannelcorp/meta-od-nginx:1.0.0 \
  -t ghcr.io/metachannelcorp/meta-od-nginx:latest \
  -t fjrodafo/meta-od-nginx:1.0.0 \
  -t fjrodafo/meta-od-nginx:latest \
  ./nginx

docker push ghcr.io/metachannelcorp/meta-od-nginx:1
docker push ghcr.io/metachannelcorp/meta-od-nginx:1.0
docker push ghcr.io/metachannelcorp/meta-od-nginx:1.0.0
docker push ghcr.io/metachannelcorp/meta-od-nginx:latest
docker push fjrodafo/meta-od-nginx:1.0.0
docker push fjrodafo/meta-od-nginx:latest
```
