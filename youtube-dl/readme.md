Folked from mikenye/docker-youtube-dl(https://www.github.com/mikenye/docker-youtube-dl).

This folk can be updated to latest youtube-dl version automately when you use it.

## Quick Start

**NOTE**: The docker command provided in this quick start is given as an example, and parameters should be adjusted to your needs.

It is suggested to configure an alias as follows (and place into your `.bash_aliases` file):

```shell
alias youtube-dl='docker run \
                  --rm -i \
                  -u $(id -g):$(id -u) \
                  -v "$(pwd)":/workdir:rw \
                  naore/youtube-dl'
```

When run (eg: `youtube-dl https://www.youtube.com/watch?v=dQw4w9WgXcQ`), it will download the video to the current working directory, and take any command line arguments that the normal youtube-dl binary would.

## Using a config file

To prevent having to specify many command line arguments every time you run youtube-dl, you may wish to have an external configuation file.

In order for the docker container to use the configuration file, it must be mapped through to the container.

```shell
docker run \
    --rm -i \
    -u $(id -g):$(id -u) \
    -v /path/to/downloaded/videos:/workdir:rw \
    -v /path/to/youtube-dl.conf:/etc/youtube-dl.conf:ro \
    naore/youtube-dl
```

Where:

* `/path/to/downloaded/videos` is where youtube-dl will download videos to (use `"$(pwd)"` to downloade to current working directory.
* `/path/to/youtube-dl.conf` is the path to your youtube-dl.conf file.

 ## For more information, turn to https://github.com/mikenye/docker-youtube-dl/blob/master/README.md
