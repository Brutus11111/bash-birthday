#!/bin/bash
TODAY=$(date +%m-%d)
TOMORROW=$(date --date="-1days ago" +%m-%d)
BDFILE=birthdays.text
FESFILE=celebrations.text
BLUE=$'\e[1;34m'
if [[ $(cat $BDFILE | grep $TODAY)  ]]; then
  echo -e "${BLUE}TODAY'S BIRTHDAYS:"
  cat $BDFILE | grep $TODAY
fi

if [[ $(cat $BDFILE | grep $TOMORROW)  ]]; then
  echo "TODAY'S BIRTHDAYS:"
  cat $BDFILE | grep $TODAY
fi

if [[ $(cat $FESFILE | grep $TODAY)  ]]; then
  echo "TODAY'S FESTIVALS:"
  cat $FESFILE | grep $TODAY
fi

if [[ $(cat $FESFILE | grep $TOMORROW)  ]]; then
  echo "TOMORROW'S FESTIVALS:"
  cat $FESFILE | grep $TOMORROW
fi
