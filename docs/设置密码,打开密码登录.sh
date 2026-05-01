
# 设置密码
echo "root:12345678" | chpasswd

# 打开密码登录选项
sed -i "/PasswordAuthentication/d" /etc/ssh/sshd_config && echo "PasswordAuthentication no" >> /etc/ssh/sshd_config

# 重启 ssh 服务
/etc/init.d/ssh restart
