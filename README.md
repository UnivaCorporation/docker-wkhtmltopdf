# Docker container for wkhtmltopdf
Debian Stretch 0.12.6 build of wkhtmltopdf - https://builds.wkhtmltopdf.org/0.12.6-dev/wkhtmltox_0.12.6-0.20180618.3.dev.e6d6f54.stretch_amd64.deb

# Synopsis

```bash
docker run --rm -v <host_dir>:<container_dir> univa/wkhtmltopdf http://google.com/ <container>/google.pdf
```

# Description
Update to new debian version and wkhtmltopdf source.  Better TOC functionality.
