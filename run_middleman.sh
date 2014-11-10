#!/bin/sh

if [[ $OSTYPE != "darwin"* ]]; then
  echo "only support osx. now";
  exit;
fi

docker build -t middleman4dm .
docker run -p 4567:4567 -p 35729:35729 -v "$(pwd)"/DiscoverMeteor_Ja:/work/DiscoverMeteorStatic/source/chapters/ja middleman4dm middleman server --force-polling
