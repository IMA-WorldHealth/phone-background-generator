#!/bin/bash

PROJECT="OFDA"
FOLDER="output"

for index in {1..260}; do
  cp index.html tmp.html

  sed -i "s/VAR_PROJECT/$PROJECT/g" tmp.html
  sed -i "s/VAR_NUMBER/$index/g" tmp.html

  wkhtmltoimage --height 1280 --width 720 tmp.html "$FOLDER/$PROJECT-$index.png"
done;


