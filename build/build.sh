#!/bin/sh
jsbuild full.cfg -v -o ../lib -j jsts.js
tar -cvf jsts-0.9.1.tar ../src ../doc ../lib ../examples ../src ../license.txt ../authors.txt ../README.md
rm jsts-0.9.0.tar.gz
gzip -9 jsts-0.9.1.tar
mkdir tmp
cd tmp
tar xvfz ../jsts-0.9.1.tar.gz
rm ../jsts-0.9.0.zip
zip -r -9 ../jsts-0.9.1.zip *
cd ..
rm tmp -rf

