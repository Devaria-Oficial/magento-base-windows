#!/bin/bash
DOMAIN=${1:-magento-poc.test}
VERSION=${2:-2.4.4}

mkdir /vagrant/magento
cd /vagrant/magento

curl -s https://raw.githubusercontent.com/markshust/docker-magento/master/lib/onelinesetup | bash -s -- "${DOMAIN}" "${VERSION}"
