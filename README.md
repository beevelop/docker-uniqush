[![Pulls](https://shields.beevelop.com/docker/pulls/beevelop/uniqush.svg?style=flat-square)](https://links.beevelop.com/d-uniqush)
[![Layers](https://shields.beevelop.com/docker/image/layers/beevelop/uniqush/latest.svg?style=flat-square)](https://links.beevelop.com/d-uniqush)
[![Size](https://shields.beevelop.com/docker/image/size/beevelop/uniqush/latest.svg?style=flat-square)](https://links.beevelop.com/d-uniqush)
[![Release](https://shields.beevelop.com/github/release/beevelop/docker-uniqush.svg?style=flat-square)](https://github.com/beevelop/docker-uniqush/releases)
![Badges](https://shields.beevelop.com/badge/badges-7-brightgreen.svg?style=flat-square)
[![Beevelop](https://links.beevelop.com/honey-badge)](https://beevelop.com)

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
