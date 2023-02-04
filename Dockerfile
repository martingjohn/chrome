FROM martinjohn/vncserver

USER root

RUN apk add --no-cache \
        chromium \
	curl \
        mousepad \
        openssh-client \
        xterm

USER web
