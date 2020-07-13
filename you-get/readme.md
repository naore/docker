## forked from [soimort/you-get](https://github.com/soimort/you-get)

This fork can be updated to latest you-get version when you use it.

# you-get
you-get in alpine.

It is suggested to configure an alias as follows (and place into your .bash_aliases or .bashrc file):

```
alias you-get='docker run \
                  --rm -i \
                  -u $(id -u):$(id -g) \
                  -v $(pwd):/downloads:rw \
                  -w /downloads \
                  naore/you-get'
```

When run (eg: you-get https://www.youtube.com/watch?v=dQw4w9WgXcQ), it will download the video to the current working directory, and take any command line arguments that the normal you-get binary would.

For more information, visit [official you-get page](https://github.com/soimort/you-get).
