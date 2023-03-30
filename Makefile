FRONTEND = $(HOME)/goinfre/frontend

all :
	-@git clone git@github.com:4transcendence2/frontend.git $(FRONTEND)
	-@git -C $(FRONTEND) pull
## -@git clone [backend repository address] $(BACKEND)
## -@git -C $(BACKEND) pull
	cp -r $(FRONTEND)/package.json ./app/frontend/
	@docker compose build
	@docker compose up -d
	
clean :
	docker compose down
	-docker images | awk 'NR > 1 { print $$3 }' | xargs docker rmi
	-docker system prune -af
	-docker volume ls | awk 'NR > 1 { print $$2 }' | xargs docker volume rm
	rm -rf $(FRONTEND)

re :
	@make clean
	@make
