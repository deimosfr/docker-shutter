[![Docker Repository on Quay](https://quay.io/repository/deimosfr/docker-shutter/status "Docker Repository on Quay")](https://quay.io/repository/deimosfr/docker-shutter)

# docker-shutter
Docker image for shutter

I've made this image because Shutter is not developped anymore, I'm using Arch Linux and it's not well supported.

This image avoid to install a ton of perl and gnome dependancies.

# Build the image

```bash
docker build -t shutter:latest .
```

# Run the image

First configure it:

```bash
docker create -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Downloads:/data -e DISPLAY --name shutter quay.io/deimosfr/docker-shutter
```

Mount with -v the wished folder to store the captured screenshots.

The simply run it:

```bash
docker start shutter
```
