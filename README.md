# Ubuntu Dev Lab 🐧

> **A reproducible Ubuntu development environment built with Docker Compose.**
>
> _Spin up a fully configured Ubuntu workspace in minutes—not hours._

---

## Overview

Ubuntu Dev Lab provides a consistent Ubuntu environment for development, experimentation, and testing.

Instead of manually configuring a virtual machine every time, the entire environment is defined as code using Docker Compose, making it easy to build, rebuild, and share.

The project aims to provide an experience that feels closer to working on a real Linux server while remaining lightweight and disposable.

---

## Features

- Ubuntu LTS
- Docker Compose based deployment
- Non-root development user
- Persistent data volumes
- OpenSSH Server
- Fish shell with modern CLI enhancements
- Common Linux development tools
- Ready for VS Code Remote SSH
- Easy customization through Dockerfile and Compose

---

## Project Structure

```text
ubuntu-dev-lab/
├── Dockerfile
├── docker-compose.yml
├── .env
├── bootstrap/
├── scripts/
├── ssh/
├── fish/
└── README.md
```

---

## Quick Start

Clone the repository.

```bash
git clone https://github.com/EslamKamel89/ubuntu-lab.git
cd ubuntu-dev-lab
```

Build the image.

```bash
docker compose build
```

Start the lab.

```bash
docker compose up -d
```

Open a shell.

```bash
docker exec -it ubuntu-lab bash
```

Or connect over SSH.

```bash
ssh dev@localhost -p 2222
```

---

## Included Tools

The environment includes commonly used Linux development utilities such as:

- Git
- Curl
- Wget
- Vim
- Nano
- Tree
- Less
- Procps
- Net-tools
- DNS utilities
- OpenSSH Server
- Fish Shell

Additional tools can be added by extending the Dockerfile.

---

## Persistence

Application code and user data are stored using Docker volumes, allowing the environment to be rebuilt without losing important files.

Rebuilding the image updates the operating system and installed packages while preserving persistent data.

---

## Customization

The lab is designed to be extended.

Typical customizations include:

- installing additional development tools
- changing the default shell
- modifying SSH configuration
- adding language runtimes
- creating reusable bootstrap scripts

Since the environment is defined as code, every customization is reproducible.

---

## Requirements

- Docker Engine
- Docker Compose

No additional virtualization software is required.

---

## Why Docker Compose?

Docker Compose makes the environment:

- reproducible
- portable
- version controlled
- easy to rebuild
- easy to share

Running the same configuration on another machine should produce the same development environment.

---

## Roadmap

Planned improvements include:

- SSH key authentication
- VS Code Remote SSH support
- Development bootstrap scripts
- Shell enhancements
- Additional networking utilities
- Automated health checks
- Makefile for common operations
- Optional language runtimes

---

## Contributing

Suggestions, improvements, and pull requests are welcome.

If you discover a better way to configure the environment, feel free to open an issue or submit a pull request.

---

## License

MIT
