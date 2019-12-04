# docker-ripme

Lightweight (alpine) image for [ripme](https://github.com/ripmeapp/ripme).

## Build

To build the docker image run 
```
git clone https://github.com/RipMeApp/ripme-docker.git

docker build --tag ripme ripme-docker
```

## Usage


`docker run -i -t ripme -h` 
```
Loaded file:/app/ripme.jar!/rip.properties
Loaded log4j.properties
Initialized ripme v1.4.4
usage: java -jar ripme.jar [OPTIONS]
 -4,--skip404               Don't retry after a 404 (not found) error
 -D,--nosaveorder           Don't save order of images
 -d,--saveorder             Save the order of images in album
 -f,--urls-file <arg>       Rip URLs from a file.
 -h,--help                  Print the help
 -l,--ripsdirectory <arg>   Rips Directory (Default: ./rips)
 -n,--no-prop-file          Do not create properties file.
 -r,--rerip                 Re-rip all ripped albums
 -R,--rerip-selected        Re-rip all selected albums
 -t,--threads <arg>         Number of download threads per rip
 -u,--url <arg>             URL of album to rip
 -w,--overwrite             Overwrite existing files

```
