#!/usr/bin/env bash

if [ ! -d "./build" ]; then
  mkdir -p "./build"
  echo "created ./build directory"
else
  echo "./build directory already exists"
fi

COMMAND_LINE="tar czvf ./build/benchmark-suite.tar.gz \
 ./geode/build/distributions/benchmark.geode-1.0-SNAPSHOT.tar \
 ./hazelcast/build/distributions/benchmark.hazelcast-1.0-SNAPSHOT.tar \
 ./coherence/build/distributions/benchmark.coherence-1.0-SNAPSHOT.tar \
 ./ignite/build/distributions/benchmark.ignite-1.0-SNAPSHOT.tar"

echo $COMMAND_LINE
$COMMAND_LINE

