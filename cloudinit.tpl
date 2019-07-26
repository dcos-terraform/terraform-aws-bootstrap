#cloud-config
yum_repos:
  centos-extras:
    name: CentOS-$releasever - Extras
    mirrorlist: http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=extras&infra=$infra
    enabled: no
    gpgcheck: yes
    gpgkey: http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
runcmd:
- yum install -y yum-utils
- yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
- yum install -y --enablerepo centos-extras container-selinux
- yum install -y docker-ce
- systemctl disable firewalld.service
- systemctl stop firewalld.service
- systemctl enable docker.service
- systemctl start --no-block docker.service
- setenforce 0
