#!/bin/sh
#ReadMe
#the script can easy make a source view cmd

echo "vim plugin ctags and cscope auto generation"
echo "=================    start      =================="
echo "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
echo "cscope -Rbkq"
cscope -Rbkq
echo "=================    end        =================="
