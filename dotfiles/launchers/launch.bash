#!/bin/bash

TRUE_PATH=$(readlink $1)
TRUE_DIR=$(basename $(dirname $TRUE_PATH))

echo $TRUE_DIR

if [ $TRUE_DIR == "codeorg" ]
then
  bash ~/.launchers/launchCodeorg.bash $1
elif [ $TRUE_DIR == "steamenv" ]
then
  steam-run $1
else
  eval $1
fi
