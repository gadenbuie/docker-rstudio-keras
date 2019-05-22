# RStudio Keras Docker Image

[![Travis build
status](https://travis-ci.org/gadenbuie/docker-rstudio-keras.svg?branch=master)](https://travis-ci.org/gadenbuie/docker-rstudio-keras)
[![Docker Pulls](https://img.shields.io/docker/pulls/grrrck/rstudio-keras.svg)](https://cloud.docker.com/repository/docker/grrrck/rstudio-keras)

<https://cloud.docker.com/repository/docker/grrrck/rstudio-keras>

A Docker Image with [RStudio](https://rstudio.com) and [keras](https://keras.io/), built on [rocker/verse](https://www.rocker-project.org/).

Note that currently this image is not built for use with GPUs, but this may be included in the future.

## Usage

```bash
docker run -d -p 8787:8787 -e PASSWORD="SET A PASSWORD" grrrck/rstudio-keras
```

Open up a `localhost:8787` in a browser and login as user `rstudio` with the password you set in the above command. Note that `rocker/verse` requires that you set a password; if not set the image will exist quickly with an error.

If you use the default user (`rstudio`), keras and tensorflow will be pre-installed in a Python virtual environment in `~/.virtualenvs/r-tensorflow`. If you change the default user, you will need to run the following inside the RStudio interface on the image's first start.

```r
library(keras)
install_keras()
```

If you are running the image on a machine with available GPUs, you can install the GPU-enabled version of TensorFlow by running

```r
library(keras)
install_keras(tensorflow = "gpu")
```

For more information, [TensorFlow for R from RStudio](https://tensorflow.rstudio.com/) is a great resource.

