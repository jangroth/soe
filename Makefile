.PHONY: help build-docker bash

noop:=
space:=$(noop) $(noop)

# default target
help: ## This help
	@grep -E -h "^[a-zA-Z_-]+:.*?## " $(MAKEFILE_LIST) \
	  | sort \
	  | awk -v width=36 'BEGIN {FS = ":.*?## "} {printf "\033[36m%-*s\033[0m %s\n", width, $$1, $$2}'


DOCKER_IMAGE := dotfiles

build-docker:  ## Build Dockerfile
	cd docker && \
	rsync --recursive --delete --update ../files ../shell . && \
	ls -la && \
	docker build . \
		--tag dotfiles

docker-%: build-docker ## Run the target within make within a docker container -- e.g. `make docker-help`
	docker run \
		--rm \
		-it \
		--volume $(HOME)/.aws:/root/.aws \
		--volume $(HOME)/.ssh:/root/.ssh \
		--volume /var/run/docker.sock:/var/run/docker.sock \
		--volume $(CURDIR):/project \
		--workdir /project \
		--entrypoint make \
		$(DOCKER_IMAGE) \
		"$*"

zsh:  ## Run a zsh shell - run as "make docker-zsh" to get a shell within docker
	/bin/zsh

bash:  ## Run a bash shell - run as "make docker-bash" to get a shell within docker
	/bin/bash
