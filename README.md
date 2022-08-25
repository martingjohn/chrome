# chrome
Chrome on desktop
Built on basic vnc server

You'll want to use "seccomp" file from https://github.com/jessfraz/dotfiles/blob/master/etc/docker/seccomp/chrome.json
And also increase the default shm_size to 512mb
And you might want to map a volume for home directory (but you will need to populate $HOME/.vnc/config with securitytypes=none)

So something like

```
version: '3.7'
services:
  chrome:
    image: martinjohn/chrome
    shm_size: '512mb'
    volumes:
      - ${PWD}/home:/home/web
    security_opt:
      - seccomp=chrome.json
```
