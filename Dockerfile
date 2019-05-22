FROM rocker/tidyverse:latest

RUN apt-get update && apt-get install -y python-pip && pip install virtualenv

RUN apt-get update && \
  install2.r --deps TRUE keras 

RUN su - rstudio -c "Rscript -e 'keras::install_keras()'"

