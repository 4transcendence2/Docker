FROM debian:11.5

WORKDIR /home/frontend
RUN apt-get update \
	&& apt-get install -y vim curl\
  && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
	&& apt-get clean -y \
	&& apt-get autoremove -y
COPY ./srcs	/home/frontend/
RUN npm i
EXPOSE 3000
CMD npm start
