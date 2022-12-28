#!/bin/bash
set -e

if [[ "$1" = "serve" ]]; then
    shift 1
    torchserve --start --model-store /opt/torch_tensorrt/model-store --ts-config /opt/torch_tensorrt/config.properties
else
    eval "$@"
fi

# prevent docker exit
tail -f /dev/null
