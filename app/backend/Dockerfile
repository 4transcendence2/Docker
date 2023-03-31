FROM debian:11.5

WORKDIR /home
RUN apt-get update \
	&& apt-get install -y curl git\
  && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
	&& apt-get clean -y \
	&& apt-get autoremove -y
ENV LC_ALL=C.UTF-8
COPY ./package.json	/home
RUN npm i
WORKDIR /home/backend
COPY ./start.sh /
CMD /bin/bash /start.sh
