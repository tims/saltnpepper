#!/usr/bin/env bash
set -e

EDITOR=mate

if [ -d $1 ]; then
  HOME=$1
else
  echo "directory $1 does not exist"
  exit 1
fi

if [ $2 ]; then
  DATE=`date -v$2d "+%Y.%m.%d"`
else
  DATE=`date "+%Y.%m.%d"`
fi

HOME=$1
NAME=`basename $HOME`
MASTER_FILE=$HOME/$NAME.rst
FILE=$HOME/$DATE.rst

if [ -f $FILE ]; then
  echo $FILE exists
else
  echo $FILE does not exist, starting new one.
  echo $DATE >> $FILE
  echo ========== >> $FILE
  echo >> $FILE
fi


if [ -f $MASTER_FILE ]; then
  rm $MASTER_FILE
fi

for rstfile in `ls $HOME | grep .rst | sort`
do
  echo ".. include:: $rstfile" >> $MASTER_FILE
done

$EDITOR $FILE
