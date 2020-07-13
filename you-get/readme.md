## forked from [soimort/you-get](https://github.com/soimort/you-get)

This fork can be updated to latest you-get version when you use it.

# you-get
you-get in alpine.

In soimort's dockerfile, there are codes as follow,
```
## https://github.com/soimort/you-get
# you-get(){
#   docker run -it --rm \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/downloads \
#     -w /downloads \
#     ondrejmo/you-get "$@"
# }
```

It is suggested to configure an alias as follows (and place into your .bash_aliases file):

```
alias you-get='docker run \
                  --rm -i \
                  -u $(id -u):$(id -g) \
                  #-e PGID=$(id -g) \
                  #-e PUID=$(id -u) \
                  -v $(pwd):/downloads:rw \
                  -w /downloads \
                  naore/you-get'
```

When run (eg: you-get https://www.youtube.com/watch?v=dQw4w9WgXcQ), it will download the video to the current working directory, and take any command line arguments that the normal you-get binary would.

For more information, visit [official you-get page](https://github.com/soimort/you-get).
