#!/bin/bash
app="docker.test2"
docker build -t ${app} .
docker run -d -p 9999:80 \
  --name=${app} \
  -v $PWD:/app ${app}

