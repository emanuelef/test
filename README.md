# test

Build:
```
docker build -t test:0.1.0 .
```

Run with shell:
```
docker run -i -t test:0.1.0 /bin/bash
```
Run:
```
docker run --name test -p 8787:8787 -d test:0.1.0
```

Get IP VM (for OSX/Windows)
```
docker-machine ls
```

Get container logs(stdout and stderr):
```
docker ps
docker logs test
docker top test
```
