#!/bin/bash

sudo adduser \
--system \
--shell /bin/bash \
--gecos \
--group \
--disabled-password \
--home /home/deployer \
deployer
