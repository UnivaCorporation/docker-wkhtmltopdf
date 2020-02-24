FROM debian:9
MAINTAINER F. Ferstl <fferstl@univa.com>
ENV BUILD_PACKAGES build-essential wget
ENV MAIN_PACKAGES fontconfig libjpeg62-turbo libjpeg62-turbo-dev libpng16-16 \
    libssl1.1 ca-certificates libssl-dev libxext6 libxrender-dev xfonts-base xfonts-75dpi
# Install 0.12.6 that has TOC generation bug fixed
ENV WKHTMLTOPDF wkhtmltox_0.12.6-0.20180618.3.dev.e6d6f54.stretch_amd64.deb
ENV WKHTMLTOPDF_URL https://builds.wkhtmltopdf.org/0.12.6-dev/$WKHTMLTOPDF
RUN apt-get update -qq \
  && apt-get install --no-install-recommends -yq $BUILD_PACKAGES $MAIN_PACKAGES \
  && wget --quiet --no-check-certificate $WKHTMLTOPDF_URL
  && dpkg -i $WKHTMLTOPDF \
  && rm $WKHTMLTOPDF \
  && apt-get remove -y $BUILD_PACKAGES \
  && apt-get autoremove -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && truncate -s 0 /var/log/*log
ENTRYPOINT ["wkhtmltopdf"]
# Show the extended help by default
CMD ["-H"]
