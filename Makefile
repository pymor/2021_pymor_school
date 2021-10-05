.PHONY: jupyter

jupyter:
	docker build -t r2d -f .binder/Dockerfile .  && docker run -it -u 1000  -p 8888:8888  r2d:latest jupyter notebook --port 8888 --ip=0.0.0.0
