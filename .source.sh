#!/bin/bash
# source this file and it only affect the current shell
# Usage: source /home/zhouwei/utils/.source.sh
# Or, if you like, you can append 'source /home/zhouwei/utils/.source.sh' to /etc/profile, and it'll affect all shells.
# used when login remote servers through ssh
# created by zhouwei on 2015-10-6

# 
alias ll="ls -alF"
alias grep="grep --color=auto"
#alias pg="ps aux | grep -v grep | grep"
alias pg="ps aux | head -1; ps aux | grep -v grep | grep"
#alias ng="netstat -anp | grep"
alias ng="netstat -antup | awk 'NR==2'; netstat -antup | grep"
alias lg="lsof -i -n | head -1; lsof -i -n | grep"
alias extip="curl -s http://whatismyip.akamai.com/"
alias e="exit"
alias yi="yum -y install"
alias mcp="mvn clean package"
alias mcpnt="mvn clean package -DskipTests -Dmaven.test.skip=true"

# modify the command prompt
export PS1="\[\033[1;32m\][\[\033[0;32m\]\u@\h:\[\033[1;35m\]\w\[\033[1;32m\]]\[\033[1;31m\] \\$\[\033[0m\] "
#export PS1="\[\033[1;35m\]\w\[\033[1;31m\] \\$\[\033[0m\] "

# add utils to PATH
export PATH=$PATH:/home/zhouwei/utils

# git auto-completion
source /home/zhouwei/utils/.git-completion.bash

