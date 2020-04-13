all:
	docker push ehirdoy/fw-nrfconnect-nrf-docker
	docker push ehirdoy/fw-nrfconnect-nrf-build
	docker push ehirdoy/fw-nrfconnect-nrf-flash
base:
	docker build -t ehirdoy/fw-nrfconnect-nrf-docker .

build: base
	docker build -f Dockerfile.build -t ehirdoy/fw-nrfconnect-nrf-docker-build .

flash: base
	docker build -f Dockerfile.flash -t ehirdoy/fw-nrfconnect-nrf-docker-flash .
