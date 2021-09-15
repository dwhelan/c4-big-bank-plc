#!/bin/sh
docker run -it --rm -p 8080:8080 -v `pwd`:/usr/local/structurizr structurizr/lite
open "http://localhost:8080"