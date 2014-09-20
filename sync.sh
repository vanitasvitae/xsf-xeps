#!/usr/bin/env bash

set -e
set -x

. config

rsync --archive \
	--delete \
	-v \
	-e ssh \
	--exclude=xmpp/ \
	--exclude=.git/ \
	./ $REMOTEHOST:$REMOTEDIR