# Flask dockerized

## Introduction

Dockerized Flask with blueprints' dynamic loading to handle routes configured outside the container.
Flask run via gunicorn inside the container

## Build the image

```bash
    ./dk-build.sh
```

## Run the container

```bash
    ./dk-run.sh
```


## Run Flask ooutside the container

### Intallation 

* Setup a virtualenv and install the dependencies.
* ***The script requires python 3.6 or above***

```bash
    #dowload the script
    $ git clone https://github.com/snafuz/dk-flask.git
    $ cd dk-flask/flask-app
    
    #install virtualenv if you not have it already
    $ pip3 install virtualenv

    # create the virtualenv and activate it
    $ virtualenv flask
    $ . flask/bin/activate

    # install requirements
    (flask) $ pip3 install -r requirements.txt

```

### Usage

Run inside the above virtualenv

```bash
./run-flask.sh
```

Run with auto-reload if blueprints folder changes

```bash
./run-with-auto-reload.sh
```









