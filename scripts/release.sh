#!/bin/sh

PATH=/c/Program\ Files/Git/usr/bin/:$PATH

if [[ $JOB_NAME =~ "vc11" ]]
then
 VC_NAME="vc11" #msvs2012
elif [[ $JOB_NAME =~ "vc12" ]]
then
 VC_NAME="vc12" #msvs2013
else
 exit 42
fi

RELEASE_DIRECTORY=/c/jenkins/"$VC_NAME"

#mkdir -p $RELEASE_DIRECTORY
#cp -frv *.7z $RELEASE_DIRECTORY
