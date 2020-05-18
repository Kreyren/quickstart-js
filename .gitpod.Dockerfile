FROM gitpod/workspace-full

USER root

# Get xlogo for testing
RUN true \
	&& apt-get update \
	&& apt-get install -y xlogo

USER gitpod

RUN true \
	# HOTFIX for https://github.com/gitpod-io/gitpod/issues/1521
	&& if [ "$(npm --version)" != 6.14.5 ]; then npm install -g npm; else true; fi
