# jdenoy/pdftk-split-docker

This container was created because building pdftk on arch was taking more time than creating a docker image.

__NOTE__: This is published on docker registry, so you don't need to clone this repo etc.  Just install docker and type the commands below.


---
This container only splits pdf images to the current directory and prepending the filename with a page number with a 5 digit format.

````
docker run --rm -it -v ~/Documents/:/tmp jdenoy/pdftk-split file.pdf
```

This will output files with the following filename :

* 00001_file.pdf
* 00002_file.pdf
* 00003_file.pdf
* 00004_file.pdf
