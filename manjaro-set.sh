#!/bin/bash

sudo pacman-mirrors -i -c China -m rank

su
echo '[archlinuxcn]
SigLevel = Optional TrustedAll
#中科大源
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' >> /etc/pacman.conf
sudo pacman -Sy archlinuxcn-keyring
echo 已添加中科大源
exit

sudo pacman -S yay


yay -S base-devel
yay -S fcitx-im fcitx-configtool fcitx-sogoupinyin google-chrome visual-studio-code-bin linuxqq
echo 已安装完常用应用

su
echo 'export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx' >> /etc/environment
echo 搜狗输入法配置完成
echo 您可以稍后重启或立即重启
exit
