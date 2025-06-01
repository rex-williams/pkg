#!/bin/sh
{
    git add .
    git commit -m "$(clock)"
    git push
} &
doas cp -fv ./pkg-* /mnt/usr/bin &
wait
