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

## 주의
- 프로젝트안에서 `npm i`를 이용하는 경우
	- node_modules 링크가 지워지고 실제 node_modules의 디렉토리와 파일이 다운로드됨(용량증가)
	- 용량이 상관없다면 아무 지장 없음. 
- 프로젝트가 지워지거나 프로젝트 내부에 node_modules 를 지우는 경우(클러스터 한정)
	- 다시 docker compose up 를 하면 프로젝트 경로에 node_modules가 생성되지 않는 문제
		- 해결 : docker compose down -> init_docker.sh -> docker compose up
		- init_docker.sh 는 도커를 지우고 심볼릭 링크 처리하는 스크립트

## 마무리 단계 확인 목록
- 각 컨테이너(dockerfile) 디렉토리 위치에 소스코드 포함시키기
- docker compose에 노출된 포트가 하나인지 확인
- makefile에 git clone하는 라인 지우기
