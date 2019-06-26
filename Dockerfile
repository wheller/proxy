
FROM amazonlinux
MAINTAINER Bill Heller

RUN mkdir ~/.ssh && ln -s /run/secrets/host_ssh_key ~/.ssh/id_rsa
RUN chmod 700 ~/.ssh
RUN chmod 600 ~/.ssh/id_rsa

ENV JUMP_HOST
ENV SSH_USER
ENV DB_SERVER
ENV LOCAL_PORT 5432
ENV REMOTE_PORT 5432

RUN yum -y update

ENTRYPOINT ["/usr/bin/ssh", "-L", "$LOCAL_PORT:$DB_SERVER:$REMOTE_PORT", "$SSH_USER@$JUMP_HOST", "-N"]
CMD [""]
