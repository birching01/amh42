
#Amh AMH 4.2 - 4.5
基于AMH 4.2（LNMP/Nginx虚拟主机面板）针对NGINX PHP MYSQL性能进行适当优化

安装时请尽量使用纯净系统

##优化内容

* nginx升级到1.9.9
*

##完善模块
*
*
*
*
###编译安装方式 (安装时间10至20分钟)
######1) 使用 root 账号登录 Linux 服务器。

######2) 执行 amh 安装脚本。
```shell
yum install -y wget

yum install -y vim
```
强烈建议先运行screen,防止ssh中断
```shell
apt-get install screen #debian
yum -y install screen #centos
screen -S amh
```
更新curl为curl-7.49.1
（不建议安装Mysql5.7系列）
更新php-5.3.29，php-5.4.45，php-5.5.36，php-5.6.22，php-7.07

*Centos 5 .x  和 Centos 6.x安装脚本
```shell
wget https://raw.githubusercontent.com/birching01/amh42/master/amh.sh && chmod 775 amh.sh && ./amh.sh 2>&1 | tee amh.log
```
**Centos 7.x安装脚本

*请先运行ifconfig，要是功能不全，请先yum安装
```shell
yum -y install net-tools.x86_64
```
###### 3)根据提示输入选择1~4选项。

输入相应序号回车，接着输入MySQL与AMH密码即进入安装流程，安装过程大约需10至20分钟(以服务器性能为准)，最后如看到安装成功提示，说明系统已安装完成。
成功安装后有必要请删除日志文件:amh.log，如安装失败需协助安装请把错误日志反馈我们。

访问http://ip:8888 即可进入AMH web端管理，默认账号为admin。

##有问题反馈
在使用中有任何问题，欢迎反馈给我，可以用以下联系方式跟我交流

* 
* 

##提示：
如遇权限问题，通过下面命令授予权限
```shell
chown -R www 文件夹
```
