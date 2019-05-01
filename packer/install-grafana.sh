#!/bin/bash
set -e

sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
curl https://packages.grafana.com/gpg.key | sudo apt-key add -

sudo apt-get update
sudo apt-get install grafana
