dc-up:
	sudo usermod -aG sudo daka
	sudo chmod 666 /var/run/docker.sock
	sudo chown 1000:1000 jenkins_home -R
	docker-compose up -d

dc-build:
	docker-compose build