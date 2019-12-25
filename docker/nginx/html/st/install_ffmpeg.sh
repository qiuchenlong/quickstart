#安装EPEL Release，因为安装需要使用其他的repo源，所以需要EPEL支持
install -y epel-release
#如果出现缺少Code提示，就执行此条命令。
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
#安装完成之后，可以查看是否安装成功
yum repolist

#安装Nux-Dextop源
#导入一个Code
rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
#安装nux-dextop 源
rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm
#查看repo源是否安装成功
yum repolist

#安装ffmpeg
yum install -y ffmpeg