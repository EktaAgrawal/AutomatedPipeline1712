ARG version="18.04"
FROM ubuntu:$version
RUN echo "$version..."$version
ARG licensekey="100..2000"
#First Dockerfile...
LABEL MAINTAINER ek@apps.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "image is build at `date`"
Run echo "License key is ..."$licensekey
#ENTRYPOINT ["sh","/code/Sample.sh"]
#CMD ["/code/testfile"]
CMD echo "Container beng built"
CMD env
