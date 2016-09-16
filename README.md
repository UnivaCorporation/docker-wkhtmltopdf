# Docker container for wkhtmltopdf
Debian Jessie 0.12.2 build of wkhtmltopdf - http://download.gna.org/wkhtmltopdf/0.12/0.12.2/

# Synopsis

```bash
docker run --rm -v <host_dir>:<container_dir> kwakwa/wkhtmltopdf http://google.com/ <container>/google.pdf
```

# Description
After trying a couple of [wkhtmltopdf](http://wkhtmltopdf.org/) containers I had mixed luck with how well they worked. I've built this image with a later version of wkhtmltopdf than some docker repositories, and seems to serve its purpose. (Primarily because 0.12.1 wasn't working on a headless machine without `xvfb-run`.)
