#!/bin/bash

set -euo pipefail

# download artefact
buildkite-agent artifact download "hello/dist/hello" .

# get name from pipeline input
NAME=$(buildkite-agent meta-data get name)

# run the binary
chmod +x hello
./hello $NAME
 