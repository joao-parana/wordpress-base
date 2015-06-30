# wordpress-base
================

Wordpress 4.2.2 Base Image

This **Dockerfile** is a [trusted build](https://registry.hub.docker.com/u/parana/wordpress-base/) of [Docker Registry](https://registry.hub.docker.com/).

### Based on wordpress Image from Docker

### Installation

```
docker pull parana/wordpress-base
```

If you is using Windows (with MSYS) or MAC OSX define in your .bash_profile this utility function:

```
docker-ip() { 
  boot2docker ip 2> /dev/null 
} 
```

There is a GIT submodule in this project for `Odin theme` from [https://github.com/wpbrasil/odin](https://github.com/wpbrasil/odin) at path `wp-content/themes/odin`. This is very nice theme from some guys in Brazil.

