# wordpress-base
================

Wordpress 4.2.2 Base Image

This **Dockerfile** is a [trusted build](https://registry.hub.docker.com/u/parana/wordpress-base/) of [Docker Registry](https://registry.hub.docker.com/).

### Based on wordpress Image from Docker

### Installation

```
docker pull parana/wordpress-base
```

Define in your .bash_profile this utility function:

```
docker-ip() { 
  boot2docker ip 2> /dev/null 
} 
```

You need to create another image to use this.
