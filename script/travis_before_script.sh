#!/bin/bash
set -ev

if [ "${TEST_FOR_SERVER}" = "true" ]; then
    exit 0
elif [ "${TEST_FOR_CLIENT}" = "true" ]; then
    # Setup Nodejs to run client-side toolchain.
    # Parhaps we should create and run Docker container which includes binary to test this repository.
    nvm install 6
    curl -o- -L https://yarnpkg.com/install.sh | bash # install yarn pkg
    export PATH=$HOME/.yarn/bin:$PATH # add `yarn` to path.
else
    echo 'This code path is run unexpectedly' 1>&2
    exit 1
fi
