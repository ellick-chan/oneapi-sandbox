all: build push

build:
	docker build -t emchan0/workshop .

push:
	docker push emchan0/workshop
