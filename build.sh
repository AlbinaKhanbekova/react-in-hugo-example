#!/bin/bash

echo "Compiling Hugo site"
cd hugo-site
hugo -d ../build
cd ..

echo "Compiling React app into build directory"
cd react-cra
npm run build
cd ..
cp -R react-cra/build/* build/react-cra-page/