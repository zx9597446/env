#!/bin/bash
while :
do
  croc --relay RELAY --pass PASS --yes --overwrite --out OUTDIR CODE && echo done
  sleep 60
done
