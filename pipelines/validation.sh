#! /bin/bash
$DIRECTORY="packer-path"
if [ -d "$DIRECTORY" ]; then
for f in *; do
    if [ -d ${f} ]; then
        packer validate --syntax-only $f
    fi
done
fi
