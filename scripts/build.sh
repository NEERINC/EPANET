#!/bin/sh

cd ../
rm -rf ./build
mkdir build
cd ./build
cp -R ../src .
cd ./src
sed -i "" 's/#define DLL/\/\/#define DLL/' ./epanet.c
sed -i "" 's/\/\/#define CLE/#define CLE/' ./epanet.c
gcc -Wall epanet.c input1.c input2.c input3.c rules.c output.c report.c inpfile.c hydraul.c smatrix.c quality.c mempool.c hash.c -o epanet2.0.11 -lm
cd ..
mv ./src/epanet2.0.11 .
rm -rf ./src
