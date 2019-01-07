# IPv6-NAT-LEDE
Configure IPv6 NAT on a LEDE router, using Xiaomi mini as an example

博客有更详细的使用教程：[UESTC校园网用OpenWrt路由器配置IPv6 NAT](https://www.jianshu.com/p/6eb97552fecf)

本项目在此环境下测试通过：
* 小米路由器mini with LEDE

## 使用方法
### 0. 准备一台小米路由器mini，刷成LEDE系统
在 https://openwrt.org 搜索MI，下载对应版本系统，然后参考网上刷机教程即可。
### 1. 下载此项目到电脑
### 2. 把nat6和ipv6.nat.sh复制到路由器上
以Windows 10为例，打开命令行，先cd到下载目录，然后输入
`scp nat6 ipv6.nat.sh root@192.168.1.1:/tmp`
（以保存到/tmp为例，下同）
### 3. 在路由器上执行以下命令
```
cd /tmp
cp nat6 /etc/init.d/nat6
chmod +x ipv6.nat.sh
chmod +x /etc/init.d/nat6
/tmp/ipv6.nat.sh
/etc/init.d/nat6 enable
```

## 测试
1. 以Windows为例，查看网卡状态，看IPv6连接一行是否显示连接到Internet
![查看网卡状态](https://upload-images.jianshu.io/upload_images/12657570-e4e03fbbaadd1350.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
2. 访问以下两个测试IPv6的网站，选择一个测试即可
ipv6-test.com
test-ipv6.com
成功连接结果：
![连接成功](https://upload-images.jianshu.io/upload_images/12657570-ff8ec61a77b9c621.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
