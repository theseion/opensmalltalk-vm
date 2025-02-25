#!/bin/bash
. ./envvars.sh
# curl clags -s silent -o output to
URL=http://files.squeak.org/5.2/
LATEST=`curl -s $URL | tr "=" "\\012" | grep Squeak5.2.*64bit | tail -1 | sed 's/"\(.*\)\/">.*$/\1/'`
echo curl -o $LATEST.zip $URL/$LATEST/$LATEST.zip
curl -o $LATEST.zip $URL/$LATEST/$LATEST.zip
unzip $LATEST.zip
mv $LATEST.image $BASE-64.image
mv $LATEST.changes $BASE-64.changes
