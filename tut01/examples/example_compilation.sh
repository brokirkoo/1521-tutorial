#!/usr/bin/env bash

file="example_compilation"

command1="dcc -E $file.c -o $file.i"
command2="dcc -S $file.c -o $file.s"
command3="dcc -c $file.c -o $file.o"
command4="dcc $file.c -o $file"

echo "Preprocessing: $command1"
$command1
echo "Compilation: $command2"
$command2
echo "Assembling: $command3"
$command3 2>/dev/null
echo "Linking: $command4"
$command4
