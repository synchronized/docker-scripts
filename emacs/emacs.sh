docker run -ti --rm -v $('pwd'):/mnt/workspace \
  -v /etc/localtime:/etc/localtime:ro \
  -v ~/.ssh/id_rsa:${UHOME}/.ssh/id_rsa:ro \
  -v ~/.gnupg:${UHOME}/.gnupg \
  -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /etc/machine-id:/etc/machine-id:ro \
  -e DISPLAY=$DISPLAY \
  -e TZ=UA \
  --name spacemacs jare/spacemacs
