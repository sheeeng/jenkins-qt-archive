#!/bin/sh

PATH=/c/Program\ Files/Git/usr/bin/:$PATH

if [[ $JOB_NAME =~ "vc11" ]]
then
 VC_NAME="msvs2012_vc11"
elif [[ $JOB_NAME =~ "vc12" ]]
then
 VC_NAME="msvs2013_vc12"
else
 VC_NAME="vc"
fi

RELEASE_DIRECTORY=/c/jenkins/"$VC_NAME"

mkdir -p $RELEASE_DIRECTORY
cp -rf *.7z *.tar.gz *.zip $RELEASE_DIRECTORY
