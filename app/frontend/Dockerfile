FROM debian:11.5

WORKDIR /home
RUN apt-get update \
	&& apt-get install -y vim curl\
  && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
	&& apt-get clean -y \
	&& apt-get autoremove -y
COPY ./package.json	/home/
RUN npm i
WORKDIR /home/frontend
COPY ./start.sh /
EXPOSE 3000
CMD /bin/bash /start.sh
