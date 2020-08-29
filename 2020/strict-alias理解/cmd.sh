#!/bin/bash

#删除同名文件
rm -f   test-*

#以两个不同的参数编译出两个目标程序
gcc -g -O2 -fstrict-aliasing main.c -o test-strict-alias
gcc -g -O2 -fno-strict-aliasing main.c -o test-no-strict-alias

#运行目标程序
echo "-----strict-alias---"
./test-strict-alias

echo "-----no-strict-alias---"
./test-no-strict-alias
