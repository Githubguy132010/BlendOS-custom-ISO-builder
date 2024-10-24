#!/bin/bash
cp /usr/bin/blend-inst /usr/bin/blend-inst.backup
pacman -S --overwrite '*' blend-inst-git

