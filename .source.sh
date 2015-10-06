#!/bin/bash
# source this file and it only affect the current shell
# Usage: source /home/zhouwei/utils/.source.sh
# used when remote login servers through ssh
# created by zhouwei on 2015-10-6

# 
alias ll="ls -alF"
alias grep="grep --color=auto"
alias pg="ps aux | grep -v grep | grep"

# modify the command prompt
export PS1="\[\033[1;32m\][\[\033[0;32m\]\u@\h:\[\033[1;35m\]\w\[\033[1;32m\]]\[\033[1;31m\] \\$\[\033[0m\] "

# add utils to PATH
export PATH=$PATH:/home/zhouwei/utils

# git auto-completion
source /home/zhouwei/utils/.git-completion.bash

