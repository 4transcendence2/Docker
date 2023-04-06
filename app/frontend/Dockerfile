FROM debian:11.5

WORKDIR /home
RUN apt-get update \
	&& apt-get install -y curl git vim\
  && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
	&& apt-get clean -y \
	&& apt-get autoremove -y
ENV LC_ALL=C.UTF-8
COPY ./package*.json	/home
RUN npm i
WORKDIR /home/frontend
COPY ./start.sh /
EXPOSE 3000
HEALTHCHECK --interval=3m --timeout=3s --retries=3 CMD curl -f http://localhost || exit 1
CMD /bin/bash /start.sh
