[![Docker Automated build](https://img.shields.io/docker/automated/telfix/easy-passwordless-ssh-rsync.svg)](https://hub.docker.com/r/telfix/easy-passwordless-ssh-rsync/builds/) 
![Docker Build Status](https://img.shields.io/docker/build/telfix/easy-passwordless-ssh-rsync.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# easy-passwordless-ssh-rsync
Super simple passwordless ssh daemon including rsync

# Why?
Sometimes you need to access files in a container while developing or playing around.

# Example usage:

## Plain docker:
Start the ssh daemon and make it accessible via ssh://*docker-host-ip*:1234
```
docker run -ti -p '1234:22' -e AUTHORIZED_KEYS='<<YOUR SSH KEY FROM /home/YOURUSER/.ssh/id_rsa.pub HERE>>' telfix/sshd-rsync-passwordless
```

## docker-compose:
docker-compose.yml
```
version: '3'
services:
  easyssh:
    image: telfix/sshd-rsync-passwordless
    environment:
     - AUTHORIZED_KEYS='<<YOUR SSH KEY FROM /home/YOURUSER/.ssh/id_rsa.pub HERE>>'
    ports:
      - 1234:80
```
start with
```
docker-compose up easyssh
```

# Who?
Hi, we are TELFIX GmbH, a small Software Company located in Vienna, Austria. We love to develop things for the Web, IOT, Cryptocurrencies, Telecommunications, Embedded Systems, Mobile Phones, Games and much much more. We dont feel really nerdy or geeky, but others are saying we are :)
