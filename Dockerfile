
FROM amazonlinux
MAINTAINER Bill Heller

ENV JUMP_HOST bastion
ENV SSH_USER bastion
ENV DB_SERVER 172.30.0.1
ENV LOCAL_PORT 5432
ENV REMOTE_PORT 5432

RUN yum -y update
RUN yum -y install openssh openssh-clients


ENTRYPOINT /usr/bin/ssh -i /run/secrets/host_ssh_key -o StrictHostKeyChecking=no -v -L $LOCAL_PORT:$DB_SERVER:$REMOTE_PORT $SSH_USER@$JUMP_HOST -N
