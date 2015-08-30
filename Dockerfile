FROM ubuntu:14.04
MAINTAINER Aaron McGrouther <mcgroac1@student.op.ac.nz>

RUN apt-get -yqq update
RUN apt-get -yqq install ruby ruby-dev make nodejs
RUN gem install --no-rdoc --no-ri jekyll
VOLUME [ "/data/", "/var/www/html" ]
WORKDIR /data
ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]
