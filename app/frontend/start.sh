#! /bin/bash

if [ ! -h /home/frontend/node_modules ]
then
	ln -s /home/node_modules /home/frontend/node_modules
fi
npm run dev -- --port 3000 --host 0.0.0.0