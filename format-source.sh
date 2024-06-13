#!/bin/bash

passed=true
for file in snapd-glib/*.[ch] snapd-glib/requests/*.[ch] snapd-qt/*.cpp snapd-qt/*.h snapd-qt/Snapd/*.h tests/*.[ch] tests/*.cpp; do
    if [ $# -eq 0 ];
        # no parameters? Just apply the changes
        echo Formating $file
        clang-format -i $file
    else
        # any parameter? check that the formatting is fine
        clang-format -i $file > $file.formatted
        echo $file
        diff $file $file.formatted
        if [ $? != 0 ]; then
            passed=false
        fi
        rm $file.formatted
    fi
done
if [ $passed = false ]; then
    exit 1
fi
