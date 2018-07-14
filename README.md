# Dask for raspberry pi

## Use

## Build

### From github

Always up to date

```bash
docker build github.com/intv0id/rpi-dask -t intvoid/rpi-dask:latest
```

### From dockerhub

```bash
docker pull intvoid/rpi-dask:latest
```

### Scheduler

```bash
docker run intvoid/rpi-dask dask-scheduler
```

### Worker

```bash
docker run intvoid/rpi-dask dask-worker
```


