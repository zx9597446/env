#!/bin/bash
while :
do
  croc --relay test --yes --overwrite --out code
  
  sleep 60
done
