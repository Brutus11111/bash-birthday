#!/bin/bash
#
# Script by Robert
# github.com/Brutus11111
#
TODAY=$(date +%m-%d)
TOMORROW=$(date --date="-1days ago" +%m-%d)
BDFILE=~/scripts/birthdays.text
HFILE=~/scripts/holidays.text
ENABLE_BIRTHDAYS=1
ENABLE_HOLIDAYS=1

################

BIRTHDAYS () {
if [[ $(cat $BDFILE | grep $TODAY)  ]]; then
  echo -e "TODAY'S BIRTHDAYS:"
  cat $BDFILE | grep $TODAY
fi

if [[ $(cat $BDFILE | grep $TOMORROW)  ]]; then
  echo -e "TOMORROW'S BIRTHDAYS:"
  cat $BDFILE | grep $TOMORROW
fi
}

################

HOLIDAYS () {
if [[ $(cat $HFILE | grep $TODAY)  ]]; then
  echo -e "TODAY'S HOLIDAYS:"
  cat $HFILE | grep $TODAY
fi

if [[ $(cat $HFILE | grep $TOMORROW)  ]]; then
  echo -e "TOMORROW'S HOLIDAYS:"
  cat $HFILE | grep $TOMORROW
fi
}

################

if [[ "$ENABLE_BIRTHDAYS" == 1 ]]; then
  BIRTHDAYS
fi

if [[ "$ENABLE_HOLIDAYS" == 1 ]]; then
  HOLIDAYS
fi



