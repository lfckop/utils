# 简介
**utils**: shell工具集，通常用于Linux环境中，包含一些常用的alias、脚本、git命令自动补全、定制化的命令提示符(显示git分支名)等等，意图提供直观、简化的命令行操作。用户也可根据自己的需要对其进行修改和定制。

这个shell工具集会一直进行更新和维护。欢迎大家使用、提意见和merge request！

## 用法
1. 将utils下载至用户home目录：`$ cd $HOME && git clone https://github.com/lfckop/utils.git`
2. 有两种使用方式可供选择：
  * 只影响当前shell会话：`$ source ${HOME}/utils/.source.sh`
  * 影响所有的shell会话：在文件`/etc/profile`最后添加一行`source ${HOME}/utils/.source.sh`，或者：`$ sudo echo 'source ${HOME}/utils/.source.sh' >> /etc/profile` (需要root权限)。

## 功能介绍
### 常用`alias`
```bash
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
alias sost="netstat -n | awk '/^tcp/ {s[\$NF]++} END{for(i in s) print i, s[i]}' OFS='\t'"
```
这些`alias`的都定义在`.source.sh`文件中，一般比较直观，意图是提供简化的命令行操作，部分alias介绍如下。

* `pg`: 查找某个进程：`$ pg java`，可根据进程PID或进程名进行查找。
* `ng`: 检查端口使用情况：`$ ng 8080`，可根据端口号、进程PID或进程名进行查找。
* `extip`: 获取本机外网ip：`$ extip`.
* `mcp`: Java项目maven打包：`$ mcp`.
* `sost`: 按socket状态给出统计信息：`$ sost`.

### 命令提示符`$PS1`
```bash
export PS1='\[\033[1;32m\][\[\033[0;32m\]\u@\h:\[\033[1;35m\]\w\[\033[1;36m\]$(__git_ps1 " (%s)")\[\033[1;32m\] ]\[\033[1;31m\] \$\[\033[0m\] '
```
命令提示符`$PS1`同`alias`一样定义在`.source.sh`文件中，此`$PS1`会显示当前路径和当前文件夹的git分支名(如果它是git目录)，并用颜色区分展示，同时提供了git命令自动补全功能。

在对系统提供的默认命令提示符不满意时，可尝试使用，或在此基础上根据个人喜好对其进行定制。

### 常用脚本
这些脚本实际上只是对一些基础命令的一层薄包装，意图将一些常用的功能以简洁方便的方式提供出来。

通常这些命令都会需要一个或多个参数，在不提供参数直接使用这些命令的时候，会打印出`usage`提示信息并立即退出；同样，这些`usage`信息也会作为注释写在各个脚本的头部，建议使用者详细阅读.

现分别介绍如下。

#### catmf

#### cl

#### ff

#### first60s

#### ipfrom

#### jarfind

#### jargrep

#### jdt

#### tarc, tart, tarx
