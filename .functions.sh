#!/bin/bash
# common useful shell functions
# function name usually starts with "f_"
# usage: source this file before you use it
# created by zhouwei on 2017-12-07

# print error message to stderr in red color, and return with status code 1
# usage: f_error 'error description message'
f_error () {
    echo -e "\033[1;31m[ERROR] $@\033[0m" 1>&2
    exit 1
}
