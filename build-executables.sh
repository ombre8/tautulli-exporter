#!/bin/bash

rm -Rf .build

package_name="tautulli_exporter"

platforms=("darwin" "windows" "netbsd" "openbsd" "linux" "freebsd" "plan9")

for i in "${platforms[@]}"; do

  output_name=$package_name'-'$i'-amd64'

  if [ $i = "windows" ]; then
      output_name+='.exe'
  fi

  GOOS=$i GOARCH=amd64 go build -ldflags "-X main.minversion=`date -u +.%Y%m%d.%H%M%S`" -o .build/$output_name
done
