#!/bin/bash

if hyprctl devices -j | grep -qi '"capsLock": *true'; then
    echo "CAPSLOCK IS ON"
fi