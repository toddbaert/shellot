#!/usr/bin/env bash

Given "\"([a-z]*)\" and \"([a-z]*)\" are appended" append_when
Then "the result is \"([a-z]*)\"" append_then

When "([0-9]+) and ([0-9]+) are added" sum_when
Then "the result is ([0-9]+)" sum_then

# When "([0-9]+) is multiplied by ([0-9]+)" multiply_when
# And "the product is multiplied by ([0-9]+)" multiply_and
# Then "the product ([0-9]+)" multiply_then

declare concatenated
declare sum
declare product

function append_when () {
  concatenated=$1$2
}

function append_then () {
  if [[ "$1" == $concatenated ]]; then
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

function multiply_when () {
  product=$(( $1 * $2 ))
}

function multiply_and () {
  product=$(( $product * $1 ))
}

function multiply_then () {
  if [[ $1 -eq $product ]]; then
    return 0
  else
    return 1
  fi
}