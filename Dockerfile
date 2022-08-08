FROM ubuntu
WORKDIR /home/edp-tp-nemeth
COPY . .
ENTRYPOINT [ "./menu.sh" ]