#!/bin/bash
findmnt /tmp/archiso-tmp
if [ $? -ne 0 ]; then
    rm -rf /tmp/archiso-tmp
    mkarchiso -v -w /tmp/archiso-tmp -o out ./
else
    echo Unmount drives first.
fi
