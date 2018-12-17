build:
	docker build . -t automation-for-humans
push:
	docker tag automation-for-humans rohithr31/automation-for-humans
	docker push rohithr31/automation-for-humans
run-bash:
	docker run --name test -it automation-for-humans
clean:
	docker rm test
