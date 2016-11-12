#!/bin/bash -eu
set -o pipefail


function ok() {
  local index="$1"
  echo -e "$0:${index}\t - ok"
}


function ng() {
  local index="$1"
  echo -e "$0:${index}\t - not ok"
  exit 1
}
