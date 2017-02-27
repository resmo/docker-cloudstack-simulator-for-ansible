build:
	docker build -t cloudstack/simulator .

clean:
	docker rm -f cloudstack

run:
	docker run --name cloudstack -d -p 8080:8080 -p 8888:8888 cloudstack/simulator

shell:
	docker exec -it cloudstack /bin/bash

logs:
	docker logs -f  cloudstack
