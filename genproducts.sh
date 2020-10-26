#!/bin/bash

SOURCE=$1
CMD=$2
DEST="_products"
IMGS="images/uploads"


for file in $SOURCE/*; do
  filename=$(basename $file)
  name="${filename%.*}"
  name=${name^^}
  echo $filename
  echo $IMGS/$filename
  echo $DEST/$name.md
  echo "\
---
title: $name
images: /images/uploads/$filename
---
"
  echo " "
done


for file in $SOURCE/*; do
  filename=$(basename $file)
  name="${filename%.*}"
  name=${name^^}
  cp $file $IMGS/$filename
cat "\
---
title: $name
images: /images/uploads/$filename
---
" > $DEST/$name.md

done


