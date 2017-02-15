#!/bin/bash

if [[ "$1" == "install" ]]
then
	REQUEST=$@
fi
if [[ "$1" == "update" ]]
then
	REQUEST="update"
fi
if [[ "$1" == "upgrade" ]]
then
	REQUEST="upgrade"
fi
echo $REQUEST
PACKAGEURLS=$(apt-get --print-uris --yes $REQUEST | grep '^\'' | cut -d\' -f2)
echo $PACKAGEURLS > urls.txt

