#!/bin/sh

if [[ $OSTYPE != "darwin"* ]]; then
  echo "only support osx. now";
  exit;
fi

docker build -t middleman4dm .
docker run -p 4567:4567 -v "$(pwd)"/DiscoverMeteor_Jp:/work/DiscoverMeteorStatic/source/chapters/jp middleman4dm middleman server
