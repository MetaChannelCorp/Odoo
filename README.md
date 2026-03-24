# META Channel Corporation - Customer Relationship Management

[![GitHub Stars](https://img.shields.io/github/stars/FJrodafo/MetaCRM?style=social&logo=github&logoColor=000000&label=Stars&labelColor=ffffff&color=ffffff)](https://github.com/FJrodafo/MetaCRM/stargazers)

[![Docker Pulls](https://img.shields.io/docker/pulls/fjrodafo/meta-crm?style=flat&logo=docker&logoColor=ffffff&label=Pulls&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/meta-crm)
[![Image Size](https://img.shields.io/docker/image-size/fjrodafo/meta-crm?style=flat&logo=docker&logoColor=ffffff&label=Size&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/meta-crm)

## Index

1. [Introduction](#introduction)
2. [Project Structure](#project-structure)
3. [Setup](#setup)
4. [Hosts Configuration](#hosts-configuration)
5. [Odoo](#odoo)
    1. [Start](#start)
    2. [Stop](#stop)

## Introduction

A simple Docker Compose setup for Odoo!

<details>
<summary>Project structure</summary>

```
App/
├── nginx/
│   ├── conf.d/
│   │   └── default.config
│   └── Dockerfile
├── .env
├── docker-compose.yaml
└── odoo.conf
```
</details>

## Setup

Clone this repository:

```shell
git clone https://github.com/FJrodafo/MetaCRM.git
```

Copy `.env.example` to `.env` and fill the credentials:

```shell
cp .env.example .env
```

Do the same for `odoo.conf.example` to `odoo.conf` and fill the credentials:

```shell
cp odoo.conf.example odoo.conf
```

## Hosts Configuration

To access Odoo with a custom local domain, add the following line to your `/etc/hosts` file:

```conf
127.0.0.1	crm.metachannelcorp.com	crm.metachannelcorp.ie
127.0.0.1	crm.metachannelcorporation.com	crm.metachannelcorporation.ie
```

## Odoo

### Start

```shell
docker compose up -d --build
```

> [!NOTE]
> 
> Odoo: [http://crm.metachannelcorp.com](http://crm.metachannelcorp.com)

### Stop

```shell
docker compose down
```
