FROM alpine:latest

RUN apk add --no-cache xvfb x11vnc xfce4 openssl bash sudo

RUN adduser -D -s /bin/bash thachdinh && echo "thachdinh:testvnc" | chpasswd
USER thachdinh

RUN mkdir -p /home/thachdinh/.vnc && x11vnc --storepasswd testvnc /home/thachdinh/.vnc/passwd

ENV DISPLAY :99 
ENV RESOLUTION 1920x1080x24

COPY entry.sh /

CMD ["/entry.sh"]