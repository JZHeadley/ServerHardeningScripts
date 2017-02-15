#!/bin/bash
PACKEAGELIST=$(yum list updates | grep -o '^\S*' | tail -n +4)
PACKAGEURLS=$(yumdownloader --urls $PACKAGELIST | tail -n +5)
echo $PACKAGEURLS >> urls.txt


