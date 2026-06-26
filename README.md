To run the container:
podman run -it --network=host --userns keep-id -v /etc/passwd:/etc/passwd:ro -v /run/user:/run/user -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY  -it ghcr.io/ebcww/visionclientcontainer:main 
