FROM ubuntu:14.04.2

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible git-core

RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts

ADD requirements.yml /requirements.yml
ADD playbook.yml /playbook.yml

RUN ansible-galaxy install -r requirements.yml
RUN ansible-playbook -i /etc/ansible/hosts /playbook.yml -vvvv
