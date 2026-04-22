# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Initial Docker Compose setup with three services: PostgreSQL (`meta_od_db`), Odoo (`meta_od`) and Nginx (`meta_od_nx`).
- PostgreSQL 17 service with environment-based credentials, named volume `meta_od_db_data` and a `pg_isready` healthcheck.
- Odoo 19 service with dependency on the healthy PostgreSQL service, named volume `meta_od_data` and read-only `odoo.conf` mount.
- Nginx reverse proxy service using a custom Docker image (`fjrodafo/meta-od-nginx:latest`) published on both Docker Hub and GitHub Packages, with network alias `od.metachannelcorp.com`.
- Nginx HTTP redirects from `od.metachannelcorp.ie`, `od.metachannelcorporation.ie` and `od.metachannelcorporation.com` to the canonical domain `od.metachannelcorp.com`.
- Nginx proxy timeouts set to 720s (`proxy_read_timeout`, `proxy_connect_timeout`, `proxy_send_timeout`) to support long-running Odoo requests.
- Custom Docker network `meta_od_network` shared across all services.
- Named volumes `meta_od_db_data` and `meta_od_data` for persistent storage.
- `.env`-based configuration for all ports, credentials and hosts, with `.env.example` as a reference template.
- `odoo.conf` with custom addons path (`/mnt/extra-addons`), PostgreSQL connection settings and XML-RPC enabled on port 8069 for external bot integration.
- `odoo.conf.example` as a reference template for the Odoo configuration file.
- `restart: unless-stopped` policy on all services.

### Changed

- ...

### Deprecated

- ...

### Removed

- ...

### Fixed

- ...

### Security

- ...

[unreleased]: https://github.com/MetaChannelCorp/Odoo/compare/0.0.0...HEAD
