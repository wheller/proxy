PhirePhly Proxy
==============+

A simple docker image proxy for mapping ports and connection to servers through jump or bation hosts.

# Automated build

```
docker pull phirephly/proxy
```

# Image details

1. Based on [amazonlinux](https://hub.docker.com/_/amazonlinux)

# Environment variables with defaults

```
ENV JUMP_HOST bastion
ENV SSH_USER bastion
ENV DB_SERVER 172.30.0.1
ENV LOCAL_PORT 5432
ENV REMOTE_PORT 5432

