#!/bin/bash

# sm230-auto-connect version 0.8
# Automatically connect to a specified remote server

# Copyright (C) 2020 Nick Ivanov <sm230@pm.me>
# LICENSE: GNU General Public License version 3

# =========================================================
# WARNING: THIS SCRIPT IS FOR DEVELOPING AND TESTING ONLY!
# IT USES A HARD-CODED PASSWORD, AND THUS IT IS NOT SECURE.
# IT MUST NEVER BE USED IN A PRODUCTION ENVIRONMENT!
# =========================================================

# Before using the script, please specify the following
# self-explanatory parameters.
REMOTE_USER=pi
REMOTE_HOST=192.168.0.1
REMOTE_PORT=22
REMOTE_PASSWORD=pass

if [[ $1 == "init" ]]; then
	ssh -p $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST
else
	sshpass -p $REMOTE_PASSWORD ssh -p $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST
fi
