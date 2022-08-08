FROM ubuntu
WORKDIR /home/$USER/edp-tp-nemeth
COPY . .
ENTRYPOINT [ "./menu.sh" ]