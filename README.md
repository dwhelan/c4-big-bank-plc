# Big Bank PLC C4 Diagrams with Structurizr Lite

This repo is built from instructions from [Getting started with Structurizr Lite](https://dev.to/simonbrown/getting-started-with-structurizr-lite-27d0) but uses the [Big Bank PLC](https://structurizr.com/share/36141) example.

## Install
Make sure you have [Docker installed](https://docs.docker.com/get-docker/) and enter the following in a console:

Check out the repo using `ssh`:
```
git clone git@github.com:dwhelan/c4-big-bank-plc.git
cd c4-big-bank-plc
```

or using `https`:
```
git clone https://github.com/dwhelan/c4-big-bank-plc.git
cd c4-big-bank-plc
```

## Run
**macOS or Linux**
```
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v `pwd`:/usr/local/structurizr structurizr/lite
```

**Windows Powershell**
```
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v $pwd:/usr/local/structurizr structurizr/lite
```

**Windows Command**
```
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v %CD%:/usr/local/structurizr structurizr/lite
```

Browse to http://localhost:8080 to see the generated diagrams. Change the first port in the above commands if you want a different port.

If you are running macOS you can simply use the `c4` script which also open your browser:

```
./c4
```

You can pass the port you want:

```
./c4 8888
```
