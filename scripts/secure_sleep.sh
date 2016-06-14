#!/bin/bash

# Enable hibernate mode for safety

sudo pmset -a hibernatemode 25 autopoweroff 1 autopoweroffdelay 1

# Destroy file vault password from memory and hibernate image
sudo pmset -a destroyfvkeyonstandby 1
