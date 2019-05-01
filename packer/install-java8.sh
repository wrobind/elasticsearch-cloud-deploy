#!/bin/bash
set -e

# Add the Java 8 repository.

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xB1998361219BD9C9
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
sudo apt-get update

# installation of Zulu
sudo apt install zulu-8

