#!/bin/sh

for file in snapd-glib/*.[ch] snapd-glib/requests/*.[ch] snapd-qt/*.cpp snapd-qt/*.h snapd-qt/Snapd/*.h tests/*.[ch] tests/*.cpp; do
    echo Formating $file
    clang-format -i $file
done
