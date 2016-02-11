[![Travis](https://img.shields.io/travis/beevelop/docker-uniqush.svg?style=flat-square)](https://travis-ci.org/beevelop/docker-uniqush)
[![Docker Pulls](https://img.shields.io/docker/pulls/beevelop/uniqush.svg?style=flat-square)](https://links.beevelop.com/d-uniqush)
[![ImageLayer](https://badge.imagelayers.io/beevelop/uniqush:latest.svg)](https://imagelayers.io/?images=beevelop/uniqush:latest)
[![Beevelop](https://links.beevelop.com/honey-badge)](https://beevelop.com)

# [Uniqush](https://uniqush.org/) for Docker :whale:
> :calling: Uniqush provides a unified push service for server-side notification to apps on any supported mobile platform.

## Manually
```bash
docker run -d --name redis redis:alpine
```

```bash
docker run -d --link redis:redis --name uniqush -p 8080:9898 beevelop/uniqush
```
