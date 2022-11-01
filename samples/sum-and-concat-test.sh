#!/usr/bin/env bash

STEPS["When \"([a-z]*)\" and \"([a-z]*)\" are appended"]=append_when
STEPS["Then the result is \"([a-z\-]*)\""]=append_then
STEPS["When ([0-9]+) and ([0-9]+) are added"]=sum_when
STEPS["Then the result is ([0-9]+)"]=sum_then

declare concatenated
declare sum

function append_when () {
  concatenated=$1$2
}

function append_then () {
  if [[ "$1" -eq $concatenated ]]; then
    return 0
  else
    return 1
  fi
}

function sum_when () {
  sum=$(( $1 + $2 ))
}

function sum_then () {
  if [[ $1 -eq $sum ]]; then
    return 0
  else
    return 1
  fi
}