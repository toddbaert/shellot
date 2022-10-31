#!/usr/bin/env bash

STEPS["Then value is \"([a-z\-]*)\""]=test1
STEPS["Then value is ([0-9]+)"]=test2

function test1 () {
  expected="hello"
  echo running test1!
    if [[ "$1" -eq $expected ]]; then
    return 0
  else
    return 1
  fi
}

function test2 () {
  expected=5
  echo running test2!
  if [[ $1 -eq $expected ]]; then
    return 0
  else
    return 1
  fi
}