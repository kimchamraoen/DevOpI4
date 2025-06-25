FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y ansible sshpass python3 openssh-client && \
    apt-get clean

WORKDIR /ansible

# Keep container running in interactive mode
CMD ["tail", "-f", "/dev/null"]
