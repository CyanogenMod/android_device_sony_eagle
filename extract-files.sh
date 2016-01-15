#!/bin/sh

set -e

export VENDOR=sony
export PLATFORM=yukon
export DEVICE=eagle

CONTROL=`adb shell grep ro.cm.device /system/build.prop | sed s/ro.cm.device=// | tr -d '\n\r'`

if [ "$CONTROL" != "$DEVICE" ]; then
    echo ""
    echo "ERROR: You must extract blobs when running CyanogenMod!"
    echo "Go to http://www.get.cm and install the latest build."
    echo ""
    exit -1
fi


./../../$VENDOR/$PLATFORM/extract-files.sh $@
