#!/bin/bash

docker run -d --rm --name fedora pycontribs/fedora sleep 60

docker run -d --rm --name ubuntu pycontribs/ubuntu:latest sleep 60

docker run -d --rm --name centos7 pycontribs/centos:7 sleep 60

ansible-playbook -i ~/Projects/mnt-homeworks/08-ansible-01-base/playbook/inventory/prod.yml\
 ~/Projects/mnt-homeworks/08-ansible-01-base/playbook/site.yml --ask-vault-pass