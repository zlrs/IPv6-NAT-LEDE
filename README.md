# IPv6-NAT-LEDE
Configure IPv6 NAT on a LEDE router, using Xiaomi mini as an example

本项目在此环境下测试通过：
* 小米路由器mini with LEDE


### 1. 下载此项目到电脑
### 2. 把nat6和ipv6.nat.sh复制到路由器上
以Windows 10为例，打开命令行，先cd到下载目录，然后输入
`scp nat6 ipv6.nat.sh root@192.168.1.1:/tmp`
### 3. 在路由器上执行以下命令
```
cd /tmp
cp nat6 /etc/init.d/nat6
chmod +x ipv6.nat.sh
chmod +x /etc/init.d/nat6
./ipv6.nat.sh
/etc/init.d/nat6 enable
```


---
### 测试
1. 以Windows为例，查看网卡状态，看IPv6连接一行是否显示连接到Internet
![查看网卡状态](https://upload-images.jianshu.io/upload_images/12657570-e4e03fbbaadd1350.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
2. 访问以下两个测试IPv6的网站，选择一个测试即可
ipv6-test.com
test-ipv6.com
成功连接结果：
![连接成功](https://upload-images.jianshu.io/upload_images/12657570-ff8ec61a77b9c621.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
