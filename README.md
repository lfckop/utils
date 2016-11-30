# 简介
**utils**: shell工具集，通常用于Linux环境中，包含一些常用的alias、脚本、git命令自动补全、定制化的命令提示符(显示git分支名)等等，意图提供直观、简化的命令行操作。

## 用法
1. 将utils下载home目录：`$ cd $HOME && git clone https://github.com/lfckop/utils.git`
2. 有两种使用方式可供选择：
  * 只影响当前shell会话：`$ source ${HOME}/utils/.source.sh`
  * 影响所有的shell会话：`$ sudo echo -e "\n\n###\nsource \${HOME}/utils/.source.sh" >> /etc/profile`