#!/bin/bash
# common useful shell functions
# function name usually starts with "f_"
# usage: source this file before you use it
# created by zhouwei on 2017-12-07

# print error message to stderr in red color
f_error () {
    echo -e "\033[1;31m[ERROR] $@\033[0m" 1>&2
}
