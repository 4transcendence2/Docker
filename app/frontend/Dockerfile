FROM debian:11.5

RUN apt-get update \
	&& apt-get install -y vim curl git\
  && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
	&& apt-get clean -y \
	&& apt-get autoremove -y \
	&& mkdir /home/frontend \
	&& npm install /home/frontend

EXPOSE 3000
WORKDIR /home/frontend
ENTRYPOINT npm start
