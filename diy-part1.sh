#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# fix hellword v2ray erro
# sed -i 's/PKG_USE_MIPS16/PKG_BUILD_FLAGS:=no-mips16\nPKG_USE_MIPS16/' feeds/helloworld/v2ray-plugin/Makefile


# Add a feed source
# sed -i "/helloworld/d" "feeds.conf.default"
# echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
sed -i "/passwall/d" "feeds.conf.default"
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

