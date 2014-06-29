#!/bin/bash
 
sudo apt-add-repository -y ppa:rwky/redis
sudo apt-get update
sudo apt-get install redis-server