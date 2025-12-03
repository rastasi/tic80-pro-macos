#!/bin/sh
rm -rf Contents/Resources/src
git clone --recursive https://github.com/nesbox/TIC-80  Contents/Resources/src
cd Contents/Resources/src/build
cmake -DBUILD_WITH_ALL=On -DBUILD_PRO=On -DCMAKE_POLICY_VERSION_MINIMUM=3.5 ..
make -j4
