build:
	docker build . -t automation-for-humans
push:
	docker tag automation-for-humans rohithr31/automation-for-humans
	docker push rohithr31/automation-for-humans
