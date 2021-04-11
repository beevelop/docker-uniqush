![GitHub Workflow Status](https://img.shields.io/github/workflow/status/beevelop/docker-uniqush/Docker%20Image?style=for-the-badge)
![Docker Pulls](https://img.shields.io/docker/pulls/beevelop/uniqush.svg?style=for-the-badge)
![Docker Stars](https://img.shields.io/docker/stars/beevelop/uniqush?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/beevelop/uniqush/latest?style=for-the-badge)
![License](https://img.shields.io/github/license/beevelop/docker-uniqush?style=for-the-badge)
[![GitHub release](https://img.shields.io/github/release/beevelop/docker-uniqush.svg?style=for-the-badge)](https://github.com/beevelop/docker-uniqush/releases)
![GitHub Release Date](https://img.shields.io/github/release-date/beevelop/docker-uniqush?style=for-the-badge)
![CalVer](https://img.shields.io/badge/CalVer-YYYY.MM.MICRO-22bfda.svg?style=for-the-badge)
[![Beevelop](https://img.shields.io/badge/-%20Made%20with%20%F0%9F%8D%AF%20by%20%F0%9F%90%9Dvelop-blue.svg?style=for-the-badge)](https://beevelop.com)

# [Uniqush](https://uniqush.org/) for Docker :whale:

> :calling: Uniqush provides a unified push service for server-side notification to apps on any supported mobile platform.

## Docker-Compose

```bash
git clone https://github.com/beevelop/docker-uniqush && cd docker-uniqush
docker-compose up -d
```

## Manually

```bash
docker run -d --name redis redis:alpine
docker run -d --link redis:redis --name uniqush -p 9898:9898 beevelop/uniqush
```

You can validate that Uniqush successfully launched by accessing **http://YOUR_HOST:9898/version**.
