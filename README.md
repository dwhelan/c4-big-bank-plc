# Big Bank PLC C4 Diagrams with Structurizr Lite

![Big Bank PLC](SystemLandscape-thumbnail.png)

This repo is built from instructions from [Getting started with Structurizr Lite](https://dev.to/simonbrown/getting-started-with-structurizr-lite-27d0) but uses the [Big Bank PLC](https://structurizr.com/share/36141) example.

## Install
Make sure you have [Docker installed](https://docs.docker.com/get-docker/) and check out the repo using `ssh`:
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

**Windows Git bash**
```
docker pull structurizr/lite
MSYS_NO_PATHCONV=1 docker run -it --rm -p 8080:8080 -v $(pwd):/usr/local/structurizr structurizr/lite
```
**Windows Powershell**
```
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v ${pwd}:/usr/local/structurizr structurizr/lite
```

**Windows Command Prompt**
```
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v %CD%:/usr/local/structurizr structurizr/lite
```

Browse to http://localhost:8080 to see the generated diagrams. Change the first port (-p **8080**:) in the above commands if you want a different port.

If you are running macOS you can simply use the `c4` script which also opens your browser:

```
./c4
```

You can pass the port you want:

```
./c4 8888
```
