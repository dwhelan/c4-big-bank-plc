# Big Bank PLC C4 Diagrams with Structurizr Lite

!(./images/SystemLandscape-thumbnail.png)

This repo is built from instructions from [Getting started with Structurizr Lite](https://dev.to/simonbrown/getting-started-with-structurizr-lite-27d0) but uses the [Big Bank PLC](https://structurizr.com/share/36141) example.

## Install
Make sure you have [Docker installed](https://docs.docker.com/get-docker/) and enter the following in a console:

```
git clone git@github.com:dwhelan/c4-big-bank-plc.git
cd c4-big-bank-plc
docker pull structurizr/lite
```

## Run

**macOS or Linux**
```
docker run -it --rm -p 8080:8080 -v `pwd`:/usr/local/structurizr structurizr/lite
```

**Windows Powershell**
```
docker run -it --rm -p 8080:8080 -v $pwd:/usr/local/structurizr structurizr/lite
```

**Windows Command**
```
docker run -it --rm -p 8080:8080 -v %CD%:/usr/local/structurizr structurizr/lite
```

Browse to http://localhost:8080 to see the generated diagrams. Change the first port in the above commands if you want a different port.

If you are running macOS you can simply use the `run` script which also open your browser:

```
./run
```

You can pass the port you want:

```
./run 8888
```
