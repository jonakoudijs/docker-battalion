[![Build Status](https://img.shields.io/github/workflow/status/jonakoudijs/docker-battalion/build.svg?logo=github)](https://github.com/jonakoudijs/docker-battalion/actions)
[![CodeFactor](https://www.codefactor.io/repository/github/jonakoudijs/docker-battalion/badge)](https://www.codefactor.io/repository/github/jonakoudijs/docker-battalion)
[![Docker Pulls](https://img.shields.io/docker/pulls/jonakoudijs/battalion.svg)](https://hub.docker.com/r/jonakoudijs/battalion)
[![Image Size](https://img.shields.io/docker/image-size/jonakoudijs/battalion/latest.svg)](https://hub.docker.com/r/jonakoudijs/battalion)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

# Battalion 1944 (Legacy) Docker image

Dedicated server of Battalion 1944 (Legacy) on Ubuntu. The image is
automatically rebuild every week.

## Tags

* [`latest`](Dockerfile)

## Usage

### Run with default configuration
```shell
docker run --name battalion -d \
  -p 27015:27015/tcp -p 27015:27015/udp \
  -p 7777:7777/tcp   -p 7777:7777/udp \
  jonakoudijs/battalion:latest
```
### Run interactively for debugging
```shell
docker run -it --entrypoint="" \
  jonakoudijs/battalion:latest /bin/bash
```

## Configuration

The configuration of the server can be done in the [`server.cfg`](config/server.cfg)
file. The settings can be overwritten by copying a custom version to
`/data/config/server.cfg` or changing the config file and rebuilding the image.

## Sources

* [https://steamcommunity.com/app/489940/discussions/0/3432326055078758588/](https://steamcommunity.com/app/489940/discussions/0/3432326055078758588/)
* [http://wiki.battaliongame.com/](http://wiki.battaliongame.com/)
* [https://segmentnext.com/battalion-1944-server/](https://segmentnext.com/battalion-1944-server/)
* [https://segmentnext.com/battalion-1944-server-commands/](https://segmentnext.com/battalion-1944-server-commands/)

## License

[MIT license](LICENSE)
