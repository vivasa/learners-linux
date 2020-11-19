# learners-ubuntu

An opinionated personalisation of Ubuntu image for making a beginner's experience pleasant.

> Source code for building this image can be found [here](https://github.com/vivasa/learners-linux)

## Steps to work with this image
1. Pull this docker image: `docker pull vivasa/ubuntu:latest`
2. Create a file in any folder of your choice and name it as `docker-compose.yml`
3. Populate docker-compose.yml with the following content

```
version: '2.0'

services:
  ubuntu:
    image: vivasa/ubuntu:latest
    container_name: ubuntum
    hostname: ubuntum
    environment:
      TERM: xterm-256color
    ports:
      - "80"
    tty: true

```
4. From the terminal, navigate to the directory of `docker-compose.yml` and run `docker-compose up -d`

