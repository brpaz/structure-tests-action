#!/bin/sh -l

set -e

if [ -z "$INPUT_IMAGE" ]; then
    echo "Input image is required"
    exit 1
fi

if [ -z "$INPUT_CONFIGFILE" ]; then
    echo "Input config file is required"
    exit 1
fi

container-structure-test test --image "$INPUT_IMAGE" --config "$INPUT_CONFIGFILE"
