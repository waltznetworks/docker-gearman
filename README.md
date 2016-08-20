# docker-gearman

Run [gearman](http://gearman.org/) in [Docker](https://docs.docker.com/engine/), with [ContainerPilot](https://www.joyent.com/containerpilot) auto registering to [Consul](https://www.consul.io/).

## How to test

I've included a [Docker Compose](https://docs.docker.com/compose/) file to quickly test the container with consul.

```shell
$ docker-compose up
```

To verify consul registration, navigate to http://localhost:8500/

You can even test the gearman server using the simple telnet based protocol

```shell
$ telnet localhost 4730
Trying ::1...
Connected to localhost.
Escape character is '^]'.
status
.
^]
telnet> Connection closed.
$
```
