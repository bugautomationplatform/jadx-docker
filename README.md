# jadx-docker
Docker image for skylot/jadx

Images for new releases of jadx are built and released automatically on Docker Hub weekly.

Docker Images available at https://hub.docker.com/r/bugautomationplatform/jadx

`docker pull bugautomationplatform/jadx`

Example command using volumes to pass in input and persist output:
```bash
docker run \
 -v $(pwd):/workdir/ \
 -t jadx \
 /workdir/com.example.app.apk \
 -d /workdir 
```
