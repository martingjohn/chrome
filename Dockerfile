FROM martinjohn/vncserver

USER root

RUN apk add --no-cache \
        chromium \
        mousepad \
        openssh-client \
        xterm

USER web
