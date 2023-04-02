# Docker

## development env
- docker compose
	- front
		- OS : debian:11.5
		- node.js : v18.15.0
		- vite
	- back
		- OS : debian:11.5
		- node.js : v18.15.0
		- nestJS
	- db
		- postgresql : 

## 클러스터의 도커 이용 시
- https://github.com/alexandregv/42toolbox 이곳에서 클론 후
- 42toolbox 디렉토리 ```init_docker.sh``` 실행
- ~/goinfre/docker 확인
- 만약 volumes 관련해서 경로를 찾을 수 없다면 도커 데탑 설정에 file sharing 부분에 해당 경로를 추가해야함
  ![image](https://user-images.githubusercontent.com/62678380/228708250-b235a8fa-4d16-4b64-91e5-3059d554bca4.png)

## 깃 프로젝트
- 볼륨 마운팅 되어있는 프로젝트 내 브랜치 이동하기 전 주의사항
	- docker-compose.yml 위치해 있는 디렉토리로 이동
	- docker compose down
	- 프로젝트 내 브랜치 이동 git checkout xxx_branch
	- docker compose up -d



## 마무리 단계 확인 목록
- 각 컨테이너(dockerfile) 디렉토리 위치에 소스코드 포함시키기
- docker compose에 노출된 포트가 하나인지 확인
- makefile에 git clone하는 라인 지우기
- 
