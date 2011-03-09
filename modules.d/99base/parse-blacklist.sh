#!/bin/sh
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

for p in $(getargs rd.module.blacklist rdblacklist=); do 
    (
        IFS=,
        for p in $i; do 
            echo "blacklist $p" >> /etc/modprobe.d/initramfsblacklist.conf
        done
    )
done
