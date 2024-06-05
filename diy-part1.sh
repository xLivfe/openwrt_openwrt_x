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
sed -i "/helloworld/d" "feeds.conf.default"
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
# sed -i "/passwall/d" "feeds.conf.default"
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default

# sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
# ./scripts/feeds update -a
# rm -rf feeds/luci/applications/luci-app-mosdns
# rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
# rm -rf feeds/packages/utils/v2dat
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
# ./scripts/feeds install -a 
# sed -i "/MosDSN/d" "feeds.conf.default"
# echo 'src-git MosDSN https://github.com/sbwml/luci-app-mosdns.git' >>feeds.conf.default

