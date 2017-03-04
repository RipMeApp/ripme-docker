#docker-ripme

Lightweight (alpine) image for [ripme](https://github.com/4pr0n/ripme).

## Docker Compose Usage

I recommend using [docker-compose](https://docs.docker.com/compose/) to handle the creation and management of this container. Below is an example `docker-compose.yml` file. The path `/tmp/data` should be updated to the local directory where files should be saved.

```yml
version: '2'
services:
    ripme:
        image: kastang/ripme
        container_name: ripme
        volumes:
            - /tmp/data:/data
```

After installation, ripme can be invoked using the following:

```
$ docker-compose run ripme

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

When running this container the `java -jar /app/ripme.jar [--help]` portion of the command is assumed. Only additional args need to be passed. 

```
$ docker-compose run ripme -u 'https://reddit.com/r/pics'
```

## Usage (Standard)

You can also run this container normally without docker-compose. Replace `/tmp/data` as instructed above:

```
# docker run -it -v /tmp/data:/data kastang/ripme

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

Only additional args need to be passed:

```
docker run -it -v /tmp/data:/data kastang/ripme -u 'https://reddit.com/r/pics'
```
