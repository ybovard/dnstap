# dnstap
docker image for running a dnstap daemon as non-priviledged user

The daemon will run as user 1000

## how to run
```
docker run --rm -it ybovard/dnstap -j -l 0.0.0.0:6000
```

## how to build
```
docker build -t ybovard/dnstap:latest -f Dockerfile .
```
