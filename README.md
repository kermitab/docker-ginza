# docker-ginza

## build

```console
$ git clone  https://github.com/kermitab/docker-ginza.git
$ cd docker-ginza/.devcontainer
```

CPU Only

```console
$ docker build --target ai-cpu -t ai-cpu . -f base.Dockerfile
$ docker build --target ginza-cpu -t ginza-cpu .
```

GPU(CUDA 11.7)

```console
$ docker build --target ai-cuda117 -t ai-cuda117 . -f base.Dockerfile
$ docker build --target ginza-cuda117 -t ginza-cuda117 .
```
