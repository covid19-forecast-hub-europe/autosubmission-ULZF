#!/bin/bash

if [ $(date +'%A') = 'Monday' ]; then
  LAST_MONDAY=$(date +'%Y-%m-%d')
else
  LAST_MONDAY=$(date --date='last Mon' +'%Y-%m-%d')
fi
mkdir -p data-processed/ULZF-SEIRC19SI
cd data-processed/ULZF-SEIRC19SI
wget -O $LAST_MONDAY-ULZF-SEIRC19SI.csv 'https://apps.lusy.fri.uni-lj.si/~janezz/euhub/ULZF-SEIRC19SI/latest-forecast-ULZF-SEIRC19SI.csv'
