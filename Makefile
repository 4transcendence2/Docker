FRONTEND = $(HOME)/app/frontend
BACKEND = $(HOME)/app/backend
DB = $(HOME)/app/db 
all :
	-@git clone git@github.com:4transcendence2/frontend.git $(FRONTEND)
	-@git -C $(FRONTEND) pull
	-@git clone git@github.com:4transcendence2/backend.git $(BACKEND)
	-@git -C $(BACKEND) pull
	cp -f $(FRONTEND)/package.json ./app/frontend/
	cp -f $(BACKEND)/package.json ./app/backend/
	@mkdir -p $(DB)
	@docker-compose build --no-cache
	@docker-compose up -d

nocache:
	@docker compose build --no-cache
	
clean :
	docker-compose down
	-docker images | awk 'NR > 1 { print $$3 }' | xargs docker rmi
	-docker system prune -af --volumes
	-docker volume ls | awk 'NR > 1 { print $$2 }' | xargs docker volume rm
# rm -rf $(DB)

prune :
	rm -rf $(FRONTEND)
	rm -rf $(BACKEND)

re :
	@make clean
	@make
