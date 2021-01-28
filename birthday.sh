#!/bin/bash
TODAY=$(date +%m-%d)
TOMORROW=$(date --date="-1days ago" +%m-%d)
BDFILE=/home/robert/scripts/birthdays.text
FESFILE=/home/robert/scripts/celebrations.text
BLUE=$'\e[1;34m'
#Black         \e[0;30m
#Dark Gray     \e[1;30m
#Blue          \e[0;34m
#Light Blue    \e[1;34m
#Green         \e[0;32m
#Light Green   \e[1;32m
#Cyan          \e[0;36m
#Light Cyan    \e[1;36m
#Red           \e[0;31m
#Light Red     \e[1;31m
#Purple        \e[0;35m
#Light Purple  \e[1;35m
#Brown         \e[0;33m
#Yellow        \e[1;33m
#Light Gray    \e[0;37m
#White         \e[1;37m
#Bold/Bright   \e[1m
#Dim           \e[2m
#Underlined    \e[4m
#Blink         \e[5m
#Invert        \e[7m
#Hidden        \e[8m

if [[ $(cat $BDFILE | grep $TODAY)  ]]; then
  echo -e "${BLUE}TODAY'S BIRTHDAYS:"
  cat $BDFILE | grep $TODAY
fi

if [[ $(cat $BDFILE | grep $TOMORROW)  ]]; then
  echo -e "${BLUE}TOMORROW'S BIRTHDAYS:"
  cat $BDFILE | grep $TOMORROW
fi

if [[ $(cat $FESFILE | grep $TODAY)  ]]; then
  echo -e "${BLUE}TODAY'S FESTIVALS:"
  cat $FESFILE | grep $TODAY
fi

if [[ $(cat $FESFILE | grep $TOMORROW)  ]]; then
  echo -e "${BLUE}TOMORROW'S FESTIVALS:"
  cat $FESFILE | grep $TOMORROW
fi
