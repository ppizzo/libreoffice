# LibreOffice
## Description
Docker image with LibreOffice.

This image can be used to convert documents from one format to another with the headless feature of OpenOffice.

## Building
You can use a pre-built Docker image from the following repository:

[https://hub.docker.com/r/ppizzo/libreoffice](https://hub.docker.com/r/ppizzo/libreoffice)

or build it by yourself with the following command:

```bash
$ docker build -t ppizzo/libreoffice .
```

## Usage
The image working directory is `/doc`, therefore you could mount the directory containing your input files in the `/doc` directory inside the container and run `libreoffice` command with the required parameters.

For example, to convert a `.docx` file to a `.pdf` format, you could issue the following command:
```bash
$ docker run -ti -v $(pwd):/doc \
             ppizzo/libreoffice \
             libreoffice --headless --convert-to pdf \
             FILE.docx

$ docker run -ti -v $(pwd):/doc \
             ppizzo/libreoffice \
             chown `id -u`:`id -g` FILE.pdf
```

The second container in needed to change the outpuf file owner because libreoffice doesn't work with UIDs not listed in `/etc/passwd`.
