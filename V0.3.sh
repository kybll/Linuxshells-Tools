#!/bin/bash

#主菜单
show_menu() {
    clear
    echo "Linux工具箱"
    echo "作者：Yoiyun"
    echo "版本：V0.3"
    echo "Github: https://github.com/kybll/Linuxshells-Tools"
    echo "使用MIT开源许可协议"
    echo "欢迎使用！"
    echo "#############################"
    echo "=== 主菜单 ==="
    echo "1. 系统工具"
    echo "2. 网络工具"
    echo "3. 面板工具"
    echo "4. VPS测试"
    echo "5. 魔方云"
    echo "0. 退出"
    echo "===================="
}

###二级菜单###
#系统工具菜单
system_menu() {
    clear
    echo "=== 系统工具 ==="
    echo "1. 一键更换软件源"
    echo "2. 安装脚本依赖包"
    echo "3. 更新系统内核"
    echo "4. 同步系统时间"
    echo "5. SSH工具"
    echo "6. 修改用户密码"
    echo "7. 修改hostname"
    echo "8. 挂载新硬盘"
    echo "9. 设置Swap交换空间"
    echo "0. 返回上级菜单"
    echo "===================="
}

#网络工具菜单
network_menu() {
    clear
    echo "=== 网络工具 ==="
    echo "1. 配置防火墙"
    echo "2. 修改DNS服务器"
    echo "3. 修改hosts文件"
    echo "4. IPV6配置"
    echo "5. 配置BBR加速"
    echo "6. 内网穿透"
    echo "0. 返回上级菜单"
    echo "===================="
}

#面板工具菜单
panel_menu() {
    clear
    echo "=== 面板工具 ==="
    echo "1. 宝塔面板"
    echo "2. 小皮面板"
    echo "3. 1Panel"
    echo "4. 青龙面板"
    echo "0. 返回上级菜单"
    echo "===================="
}

#VPS测试菜单
vps_menu() {
    clear
    echo "=== VPS测试 ==="
    echo "1. 基准测试"
    echo "2. CPU测试"
    echo "3. 内存测试"
    echo "4. 硬盘测试"
    echo "6. 网络测试"
    echo "7. 其他测试"
    echo "0. 返回上级菜单"
    echo "===================="
}

#魔方云菜单
idcsmart_menu() {
    clear
    echo "=== 魔方云 ==="
    echo "1. 轻量版"
    echo "2. 加强版"
    echo "0. 返回上级菜单"
    echo "===================="
}

###三级菜单###
##系统工具
#一键更换软件源
change_repo_menu() {
    clear
    echo "=== 更换软件源 ==="
    echo "1. 大陆"
    echo "2. 海外"
    echo "0. 返回上级菜单"
    echo "===================="
}

#同步系统时间
sync_time_menu() {
    clear
    echo "=== 同步系统时间 ==="
    echo "1. 同步北京时间"
    echo "0. 返回上级菜单"
    echo "===================="
}

#SSH工具
ssh_menu() {
    clear
    echo "=== SSH工具 ==="
    echo "1. root登录"
    echo "2. 更改端口"
    echo "3. 密码/密钥登录"
    echo "4. 输出motd设置"
    echo "5. 输出上一次登录设置"
    echo "6. 手动修改ssh配置"
    echo "7. 重启SSH服务"
    echo "0. 返回上级菜单"
    echo "===================="
}

#修改用户密码
change_password_menu() {
    clear
    echo "=== 修改用户密码 ==="
    echo "1. 修改root密码"
    echo "2. 修改其其它用户密码"
    echo "0. 返回上级菜单"
    echo "===================="
}

#修改hostname
change_hostname_menu() {
    clear
    echo "=== 修改hostname ==="
    echo "1. 修改hostname"
    echo "2. 重启系统"
    echo "0. 返回上级菜单"
    echo "===================="
}

#挂载硬盘
mount_disk_menu() {
    clear
    echo "=== 挂载硬盘 ==="
    echo "1. 一键挂载新硬盘至指定目录"
    echo "2. 分区硬盘"
    echo "3. 格式化硬盘"
    echo "4. 挂载硬盘"
    echo "5. 卸载硬盘"
    echo "6. 查看硬盘信息"
    echo "7. 查看硬盘分区信息"
    echo "8. 查看硬盘挂载信息"
    echo "0. 返回上级菜单"
    echo "===================="
}

#设置Swap交换空间
set_swap_menu() {
    clear
    echo "=== 设置Swap交换空间 ==="
    echo "1. 查看Swap信息"
    echo "2. 创建Swap空间"
    echo "3. 启用Swap空间"
    echo "4. 禁用Swap空间"
    echo "0. 返回上级菜单"
    echo "===================="
}

##网络工具
#配置防火墙
firewall_menu() {
    clear
    echo "=== 配置防火墙 ==="
    echo "1. 查看防火墙状态"
    echo "2. 开启防火墙"
    echo "3. 关闭防火墙"
    echo "4. 重启防火墙"
    echo "5. 查看防火墙规则"
    echo "6. 添加防火墙规则"
    echo "7. 删除防火墙规则"
    echo "0. 返回上级菜单"
    echo "===================="
}

#修改DNS服务器
dns_menu() {
    clear
    echo "=== 修改DNS服务器 ==="
    echo "1. 查看DNS服务器"
    echo "2. 永久修改DNS服务器"
    echo "3. 临时修改DNS服务器"
    echo "0. 返回上级菜单"
    echo "===================="
}

#修改hosts文件
hosts_menu() {
    clear
    echo "=== 修改hosts文件 ==="
    echo "1. 查看hosts文件"
    echo "2. 自助修改hosts文件"
    echo "3. 手动修改hosts文件"
    echo "0. 返回上级菜单"
    echo "===================="
}

#IPV6配置
ipv6_menu() {
    clear
    echo "=== IPV6配置 ==="
    echo "1. 永久关闭"
    echo "2. 临时关闭"
    echo "0. 返回上级菜单"
    echo "===================="
}

#配置BBR加速
bbr_menu() {
    clear
    echo "=== 配置BBR加速 ==="
    echo "1. 查看BBR状态"
    echo "2. 开启BBR"
    echo "3. 关闭BBR"
    echo "0. 返回上级菜单"
    echo "===================="
}

#内网穿透
nat_menu() {
    clear
    echo "=== 内网穿透 ==="
    echo "1. frp"
    echo "2. nps"
    echo "3. 第三方服务"
    echo "0. 返回上级菜单"
    echo "===================="
}

##面板工具
#宝塔面板
bt_menu() {
    clear
    echo "=== 宝塔面板 ==="
    echo "1. 一键安装"
    echo "2. 查看默认信息"
    echo "3. 查看面板状态"
    echo "4. 启动面板"
    echo "5. 停止面板"
    echo "6. 重启面板"
    echo "7. 一键修复/更新"
    echo "8. 自定义设置"
    echo "9. 一键卸载"
    echo "0. 返回上级菜单"
    echo "===================="
}

#小皮面板
xpi_menu() {
    clear
    echo "=== 小皮面板 ==="
    echo "1. 一键安装"
    echo "2. 一键卸载"
    echo "0.返回上级菜单"
    echo "===================="
}

#1Panel
panel1_menu() {
    clear
    echo "=== 1Panel ==="
    echo "1. 一键安装"
    echo "2. 一键卸载"
    echo "0. 返回上级菜单"
    echo "===================="
}

#青龙面板
ql_menu() {
    clear
    echo "=== 青龙面板 ==="
    echo "1. 一键安装"
    echo "2. 一键卸载"
    echo "0. 返回上级菜单"
    echo "===================="
}

##VPS测试
#系统信息
base_menu() {
    clear
    echo "=== 系统信息 ==="
    echo "1. 查看CPU信息"
    echo "2. 查看内存信息"
    echo "3. 查看硬盘信息"
    echo "4. 查看网络信息"
    echo "5. 查看系统信息"
    echo "6. 查看负载信息"
    echo "7. 查看进程信息"
    echo "8. 查看磁盘IO信息"
    echo "9. 查看网络IO信息"
    echo "0. 返回上级菜单"
    echo "===================="
}

#网络测试
net_menu() {
    clear
    echo "=== 网络测试 ==="
    echo "1. 带宽测试"
    echo "2. 延迟测试"
    echo "3. 丢包测试"
    echo "4. 回程测试"
    echo "5. 去程测试"
    echo "0. 返回上级菜单"
    echo "===================="
}

#其他测试
other_menu() {
    clear
    echo "=== 其他测试 ==="
    echo "0. 返回上级菜单"
    echo "===================="
}

##魔方云
#轻量版
light_menu() {
    clear
    echo "=== 轻量版 ==="
    echo "1. 官方版"
    echo "2. 开心版"
    echo "0. 返回上级菜单"
    echo "===================="
}

#加强版
strong_menu() {
    clear
    echo "=== 加强版 ==="
    echo "1. access模式"
    echo "2. Trunk模式"
    echo "0. 返回上级菜单"
    echo "===================="
}

###四级菜单###
##系统工具
#大陆软件源
repo_china_menu() {
    clear
    echo "=== 大陆软件源 ==="
    echo "1. 阿里云"
    echo "2. 腾讯云"
    echo "3. 华为云"
    echo "4. 火山引擎"
    echo "5. 中科大"
    echo "6. 清华大学"
    echo "7. 浙江大学"
    echo "0. 返回上级菜单"
    echo "===================="
}

#海外软件源
repo_oversea_menu() {
    clear
    echo "=== 海外软件源 ==="
    echo "1. 使用第三方脚本"
    echo "0. 返回上级菜单"
    echo "===================="
}

#SSH工具-root登录
ssh_root_menu() {
    clear
    echo "=== root登录 ==="
    echo "1. 开启root登录"
    echo "2. 关闭root登录"
    echo "0. 返回上级菜单"
    echo "===================="
}

#SSH工具-密码/密钥登录
ssh_password_menu() {
    clear
    echo "=== 密码/密钥登录 ==="
    echo "1. 仅密码登录"
    echo "2. 仅密钥登录"
    echo "3. 密码密钥同时登录"
    echo "0. 返回上级菜单"
    echo "===================="
}

#SSH工具-输出motd设置
ssh_motd_menu() {
    clear
    echo "=== 输出motd设置 ==="
    echo "1. 输出motd"
    echo "2. 不输出motd"
    echo "0. 返回上级菜单"
    echo "===================="
}

#SSH工具-输出上一次登录设置
ssh_lastlogin_menu() {
    clear
    echo "=== 输出上一次登录设置 ==="
    echo "1. 输出上一次登录"
    echo "2. 不输出上一次登录"
    echo "0. 返回上级菜单"
    echo "===================="
}

#格式化硬盘
format_disk_menu() {
    clear
    echo "=== 格式化硬盘-硬盘格式 ==="
    echo "1. xfs"
    echo "2. ext4"
    echo "3. ext3"
    echo "4. ext2"
    echo "0. 返回上级菜单"
    echo "===================="
}

##网络工具
#添加防火墙规则
add_firewall_menu() {
    clear
    echo "=== 添加防火墙规则 ==="
    echo "1. tcp端口"
    echo "2. udp端口"
    echo "3. tcp+udp端口"
    echo "0. 返回上级菜单"
    echo "===================="
}

#frp
frp_menu() {
    clear
    echo "=== frp ==="
    echo "1. 服务端"
    echo "2. 客户端"
    echo "0. 返回上级菜单"
    echo "===================="
}

#nps
nps_menu() {
    clear
    echo "=== nps ==="
    echo "1. 服务端"
    echo "2. 客户端"
    echo "0. 返回上级菜单"
    echo "===================="
}

##面板工具
#宝塔面板-自定义设置
bt_custom_menu() {
    clear
    echo "=== 宝塔面板-自定义设置 ==="
    echo "1. 修改面板密码"
    echo "2. 修改面板用户名"
    echo "3. 修改面板端口"
    echo "4. 强制修改MySQL密码"
    echo "5. 修改面板安全入口"
    echo "6. 清除面板缓存"
    echo "7. 清理系统垃圾"
    echo "8. 取消访问设备验证"
    echo "9. 取消域名绑定限制"
    echo "10. 取消IP访问限制"
    echo "11. 关闭BasicAuth认证"
    echo "12. 关闭动态口令认证"
    echo "13. 关闭面板登录地区限制"
    echo "14. 关闭面板SSL"
    echo "0. 返回上级菜单"
    echo "===================="
}

##魔方云
#加强版-access模式
strong_access_menu() {
    clear
    echo "=== 加强版-access模式 ==="
    echo "1. 官方版"
    echo "2. 开心版"
    echo "0. 返回上级菜单"
    echo "===================="
}

#加强版-Trunk模式
strong_trunk_menu() {
    clear
    echo "=== 加强版-Trunk模式 ==="
    echo "1. 官方版"
    echo "2. 开心版"
    echo "0. 返回上级菜单"
    echo "===================="
}





###############脚本开始###############
###############系统工具###############
###更换软件源###
#更换大陆软件源
change_repo_china() {
    while true; do
        repo_china_menu
        read -p "请输入选项：" choice
        case $choice in
            1)
                bash <(curl -sSL https://www.kybll.cn/shells/repo.sh) --source mirrors.aliyun.com --protocol http --use-intranet-source false --install-epel false --backup true --upgrade-software false --clean-cache true --ignore-backup-tips
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            2)
                bash <(curl -sSL https://www.kybll.cn/shells/repo.sh) --source mirrors.tencent.com --protocol http --use-intranet-source false --install-epel false --backup true --upgrade-software false --clean-cache true --ignore-backup-tips
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            3)
                bash <(curl -sSL https://www.kybll.cn/shells/repo.sh) --source mirrors.huaweicloud.com --protocol http --use-intranet-source false --install-epel false --backup true --upgrade-software false --clean-cache true --ignore-backup-tips
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            4)
                bash <(curl -sSL https://www.kybll.cn/shells/repo.sh) --source mirrors.volces.com --protocol http --use-intranet-source false --install-epel false --backup true --upgrade-software false --clean-cache true --ignore-backup-tips
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            5)
                bash <(curl -sSL https://www.kybll.cn/shells/repo.sh) --source mirrors.ustc.edu.cn --protocol http --use-intranet-source false --install-epel false --backup true --upgrade-software false --clean-cache true --ignore-backup-tips
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            6)
                bash <(curl -sSL https://www.kybll.cn/shells/repo.sh) --source mirrors.tuna.tsinghua.edu.cn --protocol http --use-intranet-source false --install-epel false --backup true --upgrade-software false --clean-cache true --ignore-backup-tips
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            7)
                bash <(curl -sSL https://www.kybll.cn/shells/repo.sh) --source mirrors.zju.edu.cn --protocol http --use-intranet-source false --install-epel false --backup true --upgrade-software false --clean-cache true --ignore-backup-tips
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
    done
}

#更换海外软件源
change_repo_oversea() {
    while true; do
        repo_oversea_menu
        read -p "请输入选项：" choice
        case $choice in
            1)
                bash <(curl -sSL https://www.kybll.cn/shells/repo.sh) --abroad
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
    done
}

#换源主函数
change_repo() {
    while true; do
        change_repo_menu
        read -p "请输入选项：" choice
        case $choice in
            1)
                change_repo_china
                ;;
            2)
                change_repo_oversea
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
    done
}

###安装脚本依赖包###
#

###同步时间###
#同步系统时间
sync_time() {
    while true; do
        sync_time_menu
        read -p "请输入选项：" choice
        case $choice in
            1) #同步北京时间
                timedatectl set-timezone Asia/Shanghai
                timedatectl set-ntp true
                date
                read -p "按任意键返回上一级菜单..." -n 1 -s
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
    done
}

###安装脚本依赖包###
install_dependencies() {
    if [ -f /etc/redhat-release ]; then
        # CentOS系统
        yum update -y
        yum install -y wget unzip tar git vim
    elif [ -f /etc/debian_version ]; then
        # Debian或Ubuntu系统
        apt-get update -y
        apt-get install -y wget unzip tar git vim

    fi
    echo "依赖包安装完成。"
}

###更新系统内核###
collect_system_info_kernel() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        OS_ID=$ID
        OS_VERSION_ID=$VERSION_ID
    elif [ -f /etc/centos-release ]; then
        OS_ID="centos"
        OS_VERSION_ID=$(grep -oP '[0-9]+\.[0-9]+' /etc/centos-release)
    fi
}

update_grub() {
    if [ -f /etc/redhat-release ]; then
        grub2-mkconfig -o /boot/grub2/grub.cfg
        grub2-set-default 0
    elif [ -f /etc/debian_version ]; then
        update-grub
        latest_kernel=$(ls /boot/vmlinuz-* | sort -V | tail -n1)
        latest_version=$(basename $latest_kernel | sed 's/vmlinuz-//')
        sed -i "s/GRUB_DEFAULT=.*/GRUB_DEFAULT=\"Advanced options for Ubuntu>Ubuntu, with Linux $latest_version\"/" /etc/default/grub
        update-grub
    fi
}

centos7_update() {
    echo "开始更新CentOS 7内核..."
    packages=(
        "https://mirrors.coreix.net/elrepo-archive-archive/kernel/el7/x86_64/RPMS/kernel-lt-5.4.278-1.el7.elrepo.x86_64.rpm"
        "https://mirrors.coreix.net/elrepo-archive-archive/kernel/el7/x86_64/RPMS/kernel-lt-devel-5.4.278-1.el7.elrepo.x86_64.rpm"
    )
    
    for pkg in "${packages[@]}"; do
        wget -q --tries=3 --timeout=10 $pkg || {
            echo "下载失败: $pkg"
            exit 1
        }
    done
    
    yum localinstall -y ./*.rpm || {
        echo "安装失败，请检查依赖"
        exit 1
    }
    rm -f ./*.rpm
}

centos8_update() {
    echo "开始更新CentOS 8内核..."
    packages=(
        "https://mirrors.coreix.net/elrepo-archive-archive/kernel/el8/x86_64/RPMS/kernel-lt-5.4.290-1.el8.elrepo.x86_64.rpm"
        "https://mirrors.coreix.net/elrepo-archive-archive/kernel/el8/x86_64/RPMS/kernel-lt-core-5.4.290-1.el8.elrepo.x86_64.rpm"
        "https://mirrors.coreix.net/elrepo-archive-archive/kernel/el8/x86_64/RPMS/kernel-lt-devel-5.4.290-1.el8.elrepo.x86_64.rpm"
    )

    for pkg in "${packages[@]}"; do
        wget -q --tries=3 --timeout=10 $pkg || {
            echo "下载失败: $pkg"
            exit 1
        }
    done
    
    yum localinstall -y ./*.rpm || {
        echo "安装失败，请检查依赖"
        exit 1
    }
    rm -f ./*.rpm
}

kernel_main() {
    collect_system_info_kernel

    case $OS_ID in
        ubuntu|debian)
            echo "更新Debian/Ubuntu内核..."
            apt update && apt upgrade -y linux-image-generic
            ;;
        centos|rhel)
            case $OS_VERSION_ID in
                7*) centos7_update ;;
                8*)
                    if grep -q "Stream" /etc/centos-release; then
                        centos8_update
                    else
                        centos8_update
                    fi
                    ;;
                9*|10*) dnf update -y kernel ;;
                *) echo "不支持的CentOS版本"; exit 1 ;;
            esac
            ;;
        *) echo "不支持的系统"; exit 1 ;;
    esac

    update_grub
    echo "内核更新完成，请重启系统！"
    echo "执行命令：sudo reboot"
}

###SSH工具###
#root登录
# 修改SSH配置允许root登录（需root权限）
allow_root_ssh() {
    # 定义配置文件路径
    local sshd_config="/etc/ssh/sshd_config"
    local backup_file="/etc/ssh/sshd_config.bak.$(date +%Y%m%d%H%M%S)"

    # 权限检查
    if [[ $EUID -ne 0 ]]; then
        echo "错误：本函数需要root权限执行" >&2
        return 1
    fi

    # 安全警告
    echo "警告：允许root远程登录会显著增加系统安全风险！"
    read -p "确认要继续操作吗？(y/N) " -n 1 -r
    echo
    [[ $REPLY =~ ^[Yy]$ ]] || return 1

    # 创建备份
    if ! cp -p "$sshd_config" "$backup_file"; then
        echo "错误：无法创建配置文件备份" >&2
        return 1
    fi

    # 执行配置修改
    if sed -i -E '
        /^#?PermitRootLogin/ {
            h  # 保存模式空间到保持空间
            s/.*/PermitRootLogin yes/  # 修改配置
            H  # 追加到保持空间
            d  # 删除模式空间
        }
        $ {
            x  # 交换模式空间和保持空间
            /^$/ {
                s//PermitRootLogin yes/  # 添加新配置
                H
            }
            x  # 换回模式空间
        }' "$sshd_config"; then

        # 验证配置变更
        if ! grep -qE '^PermitRootLogin[[:space:]]+yes' "$sshd_config"; then
            echo "错误：配置修改未生效" >&2
            mv "$backup_file" "$sshd_config"
            return 1
        fi

        # 重启SSH服务（适配不同发行版）
        if command -v systemctl >/dev/null; then
            systemctl restart sshd || systemctl restart ssh
        elif command -v service >/dev/null; then
            service ssh restart
        else
            echo "错误：无法确定服务管理工具" >&2
            return 1
        fi

        echo "配置已更新，SSH服务已重启"
        echo "原配置文件备份在：$backup_file"
    else
        echo "错误：配置文件修改失败" >&2
        return 1
    fi

    # 后续安全建议
    echo -e "\n安全建议："
    echo "1. 建议配置SSH密钥认证"
    echo "2. 修改默认SSH端口（Port 22）"
    echo "3. 启用fail2ban防护"
}

#禁止root登录
secure_ssh_root() {
    # 定义配置文件路径
    local sshd_config="/etc/ssh/sshd_config"
    local backup_file="/etc/ssh/sshd_config.bak.$(date +%Y%m%d%H%M%S)"
    
    # 权限检查
    [[ $EUID -ne 0 ]] && echo "错误：需要root权限执行" >&2 && return 1

    # 创建备份（保留原始权限）
    if ! cp -p "$sshd_config" "$backup_file"; then
        echo "错误：配置文件备份失败" >&2
        return 1
    fi

    # 执行配置修改（兼容注释和空行情况）
    sed -i -E '/^#?PermitRootLogin/ {
        s/^#//  # 去除注释
        s/(PermitRootLogin)[[:space:]]+.*/\1 no/  # 修改配置
        t done  # 匹配成功则跳转
        b end  # 否则跳转结束
        :done
        h  # 保存到保持空间
        }
        $ {
            x  # 交换模式空间和保持空间
            /^$/ {
                s//PermitRootLogin no/  # 添加新配置
                H
            }
            x  # 换回模式空间
        }' "$sshd_config"

    # 验证配置变更
    if ! grep -qE '^PermitRootLogin[[:space:]]+no' "$sshd_config"; then
        echo "错误：配置修改未生效" >&2
        mv "$backup_file" "$sshd_config"
        return 1
    fi

    # 语法检查
    if ! sshd -t; then
        echo "错误：SSH配置语法错误" >&2
        mv "$backup_file" "$sshd_config"
        return 1
    fi

    # 重启服务（适配不同发行版）
    if command -v systemctl >/dev/null; then
        systemctl restart sshd || systemctl restart ssh
    elif command -v service >/dev/null; then
        service ssh restart
    else
        echo "错误：无法确定服务管理工具" >&2
        return 1
    fi

    echo "配置已生效，原文件备份：$backup_file"
    echo "安全提示：请确保存在具有sudo权限的普通用户！"
}

ssh_root(){
    while true; do
        ssh_root_menu
        read -p "请输入选项：" choice
        case $choice in
            1)
                allow_root_ssh
                ;;
            2)
                secure_ssh_root
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
    done
}

# 更改 SSH 端口
change_ssh_port() {
    # 定义配置文件路径
    local sshd_config="/etc/ssh/sshd_config"
    local backup_file="/etc/ssh/sshd_config.bak.$(date +%Y%m%d%H%M%S)"

    # 权限检查
    if [[ $EUID -ne 0 ]]; then
        echo "错误：本函数需要root权限执行" >&2
        return 1
    fi

    # 提示用户输入新端口
    read -p "请输入新的 SSH 端口号: " new_port

    # 创建备份
    if ! cp -p "$sshd_config" "$backup_file"; then
        echo "错误：无法创建配置文件备份" >&2
        return 1
    fi

    # 执行配置修改
    if sed -i -E '
        /^#?Port/ {
            h  # 保存模式空间到保持空间
            s/.*/Port '"$new_port"'/  # 修改配置
            H  # 追加到保持空间
            d  # 删除模式空间
        }
        $ {
            x  # 交换模式空间和保持空间
            /^$/ {
                s//Port '"$new_port"'/  # 添加新配置
                H
            }
            x  # 换回模式空间
        }' "$sshd_config"; then

        # 验证配置变更
        if ! grep -qE '^Port[[:space:]]+'$new_port'' "$sshd_config"; then
            echo "错误：配置修改未生效" >&2
            mv "$backup_file" "$sshd_config"
            return 1
        fi

        # 语法检查
        if ! sshd -t; then
            echo "错误：SSH 配置语法错误" >&2
            mv "$backup_file" "$sshd_config"
            return 1
        fi

        # 重启 SSH 服务（适配不同发行版）
        if command -v systemctl >/dev/null; then
            systemctl restart sshd || systemctl restart ssh
        elif command -v service >/dev/null; then
            service ssh restart
        else
            echo "错误：无法确定服务管理工具" >&2
            return 1
        fi

        echo "配置已更新，SSH 服务已重启，新端口为 $new_port"
        echo "原配置文件备份在：$backup_file"
    else
        echo "错误：配置文件修改失败" >&2
        return 1
    fi

    # 后续安全建议
    echo -e "\n安全建议："
    echo "1. 建议配置 SSH 密钥认证"
    echo "2. 启用 fail2ban 防护"
}

# 处理 SSH 密码/密钥登录菜单选择
handle_ssh_password_choice() {
    while true; do
        ssh_password_menu
        read -p "请输入选项：" choice
        case $choice in
            1)
                # 配置仅密码登录
                configure_ssh_auth "password"
                ;;
            2)
                # 配置仅密钥登录
                configure_ssh_auth "key"
                ;;
            3)
                # 配置密码和密钥同时登录
                configure_ssh_auth "both"
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
    done
}

# 配置 SSH 认证方式
configure_ssh_auth() {
    local auth_type=$1
    local sshd_config="/etc/ssh/sshd_config"
    local backup_file="/etc/ssh/sshd_config.bak.$(date +%Y%m%d%H%M%S)"

    # 权限检查
    if [[ $EUID -ne 0 ]]; then
        echo "错误：本函数需要root权限执行" >&2
        return 1
    fi

    # 创建备份
    if ! cp -p "$sshd_config" "$backup_file"; then
        echo "错误：无法创建配置文件备份" >&2
        return 1
    fi

    case $auth_type in
        "password")
            sed -i -E '
                s/^#?PasswordAuthentication.*/PasswordAuthentication yes/
                s/^#?PubkeyAuthentication.*/PubkeyAuthentication no/' "$sshd_config"
            ;;
        "key")
            sed -i -E '
                s/^#?PasswordAuthentication.*/PasswordAuthentication no/
                s/^#?PubkeyAuthentication.*/PubkeyAuthentication yes/' "$sshd_config"
            ;;
        "both")
            sed -i -E '
                s/^#?PasswordAuthentication.*/PasswordAuthentication yes/
                s/^#?PubkeyAuthentication.*/PubkeyAuthentication yes/' "$sshd_config"
            ;;
    esac

    # 验证配置变更
    if ! grep -qE '^PasswordAuthentication[[:space:]]+(yes|no)' "$sshd_config" ||
       ! grep -qE '^PubkeyAuthentication[[:space:]]+(yes|no)' "$sshd_config"; then
        echo "错误：配置修改未生效" >&2
        mv "$backup_file" "$sshd_config"
        return 1
    fi

    # 语法检查
    if ! sshd -t; then
        echo "错误：SSH 配置语法错误" >&2
        mv "$backup_file" "$sshd_config"
        return 1
    fi

    # 重启 SSH 服务（适配不同发行版）
    if command -v systemctl >/dev/null; then
        systemctl restart sshd || systemctl restart ssh
    elif command -v service >/dev/null; then
        service ssh restart
    else
        echo "错误：无法确定服务管理工具" >&2
        return 1
    fi

    echo "配置已更新，SSH 服务已重启"
    echo "原配置文件备份在：$backup_file"
}

#motd配置
configure_motd() {
    # 配置文件路径
    local sshd_config="/etc/ssh/sshd_config"
    local motd_file="/etc/motd"
    local motd_backup="/etc/motd.backup.$(date +%s)"
    
    # 权限检查
    [[ $EUID -ne 0 ]] && echo "错误：需要root权限执行" && return 1

    # 备份原始配置
    cp -p "$sshd_config" "${sshd_config}.bak" || {
        echo "配置文件备份失败"
        return 1
    }

    case $1 in
        1)
            echo "启用MOTD显示..."
            # 修改SSH配置
            sed -i '/^#*PrintMotd/c\PrintMotd yes' "$sshd_config"
            
            # 生成默认MOTD内容
            cat > "$motd_file" <<-'EOF'
=============================================
 系统警告：未经授权访问将承担法律责任！
 服务器名称：$(hostname)
 系统负载：$(uptime | awk -F'[a-z]:' '{print $2}')
 内存使用：$(free -m | awk '/Mem/{print $3"/"$2 "MB"}')
=============================================
EOF
            # 兼容动态MOTD（Ubuntu/Debian）
            if [ -d /etc/update-motd.d ]; then
                chmod +x /etc/update-motd.d/*
            fi
            ;;
        2)
            echo "禁用MOTD显示..."
            sed -i '/^#*PrintMotd/c\PrintMotd no' "$sshd_config"
            
            # 备份原有MOTD
            [ -f "$motd_file" ] && cp -p "$motd_file" "$motd_backup"
            echo "MOTD已禁用" > "$motd_file"
            ;;
        0)
            show_menu
            break
            ;;
        *)
            echo "无效选择，请重新输入。"
            read -p "按任意键重试..." -n 1 -s
            ;;
    esac

    # 重启SSH服务
    if systemctl restart sshd 2>/dev/null || systemctl restart ssh 2>/dev/null || service ssh restart 2>/dev/null; then
        echo "SSH服务已重启"
    else
        echo "警告：SSH服务重启失败，请手动检查"
    fi

    # 验证配置
    echo -e "\n当前配置状态："
    grep -E '^PrintMotd' "$sshd_config"
    echo -e "\nMOTD预览："
    cat "$motd_file"
}

# 菜单显示函数
ssh_motd_menu() {
    while true; do
        ssh_motd_menu
        read -p "请输入选项：" choice
        case $choice in
            1|2) configure_motd "$choice" ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -n 1 -s -r -p "按任意键继续..."
    done
}

# 输出上次登录设置
configure_lastlogin() {
    local sshd_config="/etc/ssh/sshd_config"
    local backup_file="/etc/ssh/sshd_config.bak.$(date +%Y%m%d%H%M%S)"
    
    # 权限检查
    [[ $EUID -ne 0 ]] && echo "错误：需要root权限执行" && return 1

    # 创建备份
    if ! cp -p "$sshd_config" "$backup_file"; then
        echo "配置文件备份失败"
        return 1
    fi

    case $1 in
        1)
            echo "启用上次登录显示..."
            sed -i '/^#*PrintLastLog/c\PrintLastLog yes' "$sshd_config"
            ;;
        2)
            echo "禁用上次登录显示..."
            sed -i '/^#*PrintLastLog/c\PrintLastLog no' "$sshd_config"
            ;;
        *) return ;;
    esac

    # 重启SSH服务
    if systemctl restart sshd 2>/dev/null || systemctl restart ssh 2>/dev/null || service ssh restart 2>/dev/null; then
        echo "SSH服务已重启"
    else
        echo "警告：SSH服务重启失败，请手动检查"
        return 1
    fi

    # 验证配置
    echo -e "\n当前配置状态："
    grep -E '^PrintLastLog' "$sshd_config"
}

ssh_lastlogin() {
    while true; do
        ssh_lastlogin_menu
        read -p "请输入选项：" choice
        case $choice in
            1|2)
                read -p "确认修改配置？(y/N) " -n 1 -r
                [[ $REPLY =~ ^[Yy]$ ]] && configure_lastlogin "$choice"
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -n 1 -s -r -p "按任意键继续..."
    done
}

# 公共配置
SSHD_CONFIG="/etc/ssh/sshd_config"

# 权限检查函数
check_root() {
    if [[ $EUID -ne 0 ]]; then
        echo "错误：需要root权限执行此操作" >&2
        return 1
    fi
}

# 服务重启函数
restart_ssh_service() {
    if command -v systemctl >/dev/null; then
        systemctl restart sshd || systemctl restart ssh
    elif command -v service >/dev/null; then
        service ssh restart
    else
        echo "错误：无法确定服务管理工具" >&2
        return 1
    fi
}

# 菜单处理函数
handle_ssh_choice() {
    while true; do
        ssh_menu
        read -p "请输入选项：" choice
        case $choice in
            1) ssh_root ;;                # 调用root登录配置函数[1,3](@ref)
            2) change_ssh_port ;;         # 调用端口修改函数[3](@ref)
            3) handle_ssh_password_choice;; # 认证方式设置[2,3](@ref)
            4) ssh_motd_menu ;;           # MOTD设置菜单[3](@ref)
            5) ssh_lastlogin ;;           # 上次登录显示设置[3](@ref)
            6) vim "$SSHD_CONFIG" ;;      # 手动编辑配置文件[3](@ref)
            7) 
                check_root || return 1
                restart_ssh_service && echo "SSH服务重启成功" 
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
    done
}

# 一键挂载功能
auto_mount_disk() {
    echo "正在扫描新硬盘..."
    lsblk -dnp | grep -v '├\|└'  # 显示未挂载磁盘
    read -p "请输入要挂载的设备路径 (如/dev/sdb): " device
    read -p "请输入挂载目录 (如/mnt/data): " mountpoint
    
    if [[ ! -b "$device" ]]; then
        echo "错误：设备不存在！"
        return 1
    fi
    
    mkdir -p "$mountpoint"
    if mount "$device" "$mountpoint" 2>/dev/null; then
        echo "临时挂载成功！"
        read -p "是否要永久挂载？(y/n): " choice
        if [[ $choice == "y" ]]; then
            uuid=$(blkid -s UUID -o value "$device")
            echo "UUID=$uuid $mountpoint auto defaults 0 0" | tee -a /etc/fstab
            echo "已添加到fstab"
        fi
    else
        echo "挂载失败，可能需要先分区或格式化！"
    fi
}

# 其他功能函数模板
partition_disk() {
    lsblk -dpn | grep disk
    read -p "请输入要分区的设备路径: " device
    fdisk "$device"
}

format_disk() {
    lsblk -dpn | grep disk
    read -p "请输入要格式化的设备路径: " device
    read -p "请输入文件系统类型 (默认ext4): " fstype
    fstype=${fstype:-ext4}
    
    if [[ "$fstype" == "xfs" ]]; then
        mkfs.xfs -f "$device"  # 强制格式化XFS文件系统[4,7,8](@ref)
    else
        mkfs.$fstype "$device"  # 其他文件系统保持默认操作[5](@ref)
    fi
}

mount_disk() {
    lsblk -dpn | grep part
    read -p "请输入分区设备路径: " device
    read -p "请输入挂载点路径: " mountpoint
    mkdir -p "$mountpoint"
    mount "$device" "$mountpoint"
}

# 菜单选项处理
handle_mount_disk_option() {
    while true; do
        mount_disk_menu
        read -p "请选择操作编号: " choice
        case $choice in
            1) auto_mount_disk ;;
            2) partition_disk ;;
            3) format_disk ;;
            4) mount_disk ;;
            5) 
                lsblk -dpn | grep part
                read -p "请输入要卸载的设备路径: " device
                umount "$device" 
                ;;
            6) lsblk -o NAME,SIZE,TYPE,MOUNTPOINT ;;
            7) fdisk -l ;;
            8) df -hT ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -p "按回车继续..."
    done
}

create_swap() {
    read -p "请输入Swap文件存放目录（如/swap）：" swap_dir
    swap_file="$swap_dir/swapfile"
    
    # 检查目录有效性
    if [[ -f "$swap_dir" ]]; then
        echo "错误：路径是文件，请重新输入目录路径！" >&2
        return 1
    fi
    
    # 创建目录
    mkdir -p "$swap_dir" || {
        echo "目录创建失败，请检查权限！" >&2
        return 1
    }

    # 获取物理内存大小
    mem_size=$(free -m | awk '/Mem:/{print $2}')
    recommended=$((mem_size * 2))M
    
    read -p "请输入Swap大小（默认推荐值$recommended）：" swap_size
    swap_size=${swap_size:-$recommended}

    # 转换单位格式
    if [[ $swap_size == *G ]]; then
        count=${swap_size%G}
        bs=1G
    elif [[ $swap_size == *M ]]; then
        count=${swap_size%M}
        bs=1M
    else
        echo "格式错误，请使用类似1G/2048M的格式" >&2
        return 1
    fi

    # 创建swap文件
    if ! dd if=/dev/zero of="$swap_file" bs=$bs count=$count status=progress; then
        echo "Swap文件创建失败，请检查磁盘空间！" >&2
        return 1
    fi

    # 设置权限
    chmod 600 "$swap_file"
    
    # 格式化并启用
    if mkswap "$swap_file" && swapon "$swap_file"; then
        echo -e "\n临时启用成功！"
        read -p "是否永久生效？(y/n): " choice
        if [[ $choice == "y" ]]; then
            echo "$swap_file swap swap defaults 0 0" | tee -a /etc/fstab
            echo "已添加到/etc/fstab"
        fi
    else
        echo "Swap启用失败，请检查日志！" >&2
        return 1
    fi
}

# Swap信息查看
show_swap_info() {
    echo -e "\n=== 当前Swap使用情况 ==="
    free -h | awk '/Swap/{print $1, $2, $3, $4}'
    
    echo -e "\n=== 活动Swap设备 ==="
    swapon --show
}

# 启用Swap空间
enable_swap() {
    echo "可用Swap文件/分区："
    lsblk -o NAME,SIZE,TYPE,MOUNTPOINT | grep -E 'swap|part'
    read -p "请输入要启用的设备路径 (如/swap/swapfile): " swap_path
    
    if [[ -f "$swap_path" ]] || [[ -b "$swap_path" ]]; then
        if swapon "$swap_path"; then
            echo "已成功启用Swap"
        else
            echo "启用失败，请检查设备状态"
        fi
    else
        echo "错误：设备/文件不存在！"
    fi
}

# 禁用Swap空间
disable_swap() {
    echo "当前活动的Swap设备："
    swapon --show
    read -p "请输入要禁用的设备路径: " swap_path
    
    if swapoff "$swap_path"; then
        echo "已成功禁用Swap"
    else
        echo "禁用失败，请检查设备是否在使用中"
    fi
}

# Swap菜单选项处理
handle_swap_option() {
    while true; do
        set_swap_menu
        read -p "请选择操作编号: " choice
        case $choice in
            1) 
                clear
                show_swap_info
                ;;
            2) 
                create_swap
                ;;
            3) 
                enable_swap
                ;;
            4) 
                disable_swap
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -p "按回车继续..."
    done
}


###防火墙###
handle_firewall_option() {
    # 检测防火墙类型
    detect_firewall_type() {
        if command -v ufw &>/dev/null; then
            echo "ufw"
        elif command -v firewall-cmd &>/dev/null; then
            echo "firewalld"
        elif command -v iptables &>/dev/null; then
            echo "iptables"
        else
            echo "unknown"
        fi
    }

    # 通用执行函数
    exec_firewall_cmd() {
        case $(detect_firewall_type) in
            ufw)
                sudo ufw "$@"
                ;;
            firewalld)
                sudo firewall-cmd "$@"
                ;;
            iptables)
                sudo "$@"
                ;;
            *)
                echo "不支持的防火墙类型"
                return 1
                ;;
        esac
    }

    # IPv6支持函数
    add_ipv6_rule() {
        read -p "是否添加IPv6规则？(y/n): " choice
        if [[ $choice == "y" ]]; then
            case $(detect_firewall_type) in
                ufw)
                    exec_firewall_cmd allow proto ${proto} from ${ip} to any port ${port}
                    ;;
                iptables)
                    sudo ip6tables -A INPUT -p ${proto} --dport ${port} -s ${ip} -j ACCEPT
                    ;;
                firewalld)
                    exec_firewall_cmd --add-rich-rule="rule family='ipv6' source address='${ip}' port protocol='${proto}' port='${port}' accept" --permanent
                    ;;
            esac
        fi
    }

    while true; do
        firewall_menu
        read -p "请选择操作编号: " choice
        case $choice in
            1) exec_firewall_cmd status verbose ;;
            2) exec_firewall_cmd enable ;;
            3) exec_firewall_cmd disable ;;
            4) exec_firewall_cmd reload ;;
            5)
                case $(detect_firewall_type) in
                    iptables)
                        exec_firewall_cmd iptables -L -n -v
                        exec_firewall_cmd ip6tables -L -n -v
                        ;;
                    *) exec_firewall_cmd status numbered ;;
                esac
                ;;
            6)
                read -p "协议类型 (tcp/udp): " proto
                read -p "端口号: " port
                read -p "IP地址 (留空为any): " ip
                ip=${ip:-any}
                
                # IPv4规则
                case $(detect_firewall_type) in
                    ufw)
                        exec_firewall_cmd allow proto ${proto} from ${ip} to any port ${port}
                        ;;
                    iptables)
                        exec_firewall_cmd iptables -A INPUT -p ${proto} --dport ${port} -s ${ip} -j ACCEPT
                        ;;
                    firewalld)
                        exec_firewall_cmd --add-rich-rule="rule family='ipv4' source address='${ip}' port protocol='${proto}' port='${port}' accept" --permanent
                        ;;
                esac
                
                # IPv6规则
                add_ipv6_rule
                
                # 应用变更
                [[ $(detect_firewall_type) == "firewalld" ]] && exec_firewall_cmd --reload
                ;;
            7)
                case $(detect_firewall_type) in
                    ufw)
                        exec_firewall_cmd status numbered
                        read -p "输入要删除的规则编号: " rule_num
                        exec_firewall_cmd delete $rule_num
                        ;;
                    iptables)
                        exec_firewall_cmd iptables -L --line-numbers
                        read -p "输入链名称: " chain
                        read -p "输入规则编号: " rule_num
                        exec_firewall_cmd iptables -D $chain $rule_num
                        ;;
                    firewalld)
                        exec_firewall_cmd --list-all
                        read -p "输入要删除的规则: " rule
                        exec_firewall_cmd --remove-rich-rule="$rule" --permanent
                        exec_firewall_cmd --reload
                        ;;
                esac
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -p "按回车继续..."
    done
}

###DNS更改###
handle_dns_option() {
    # 系统检测
    detect_os() {
        case $(uname -s) in
            Linux*)  echo "linux" ;;
            Darwin*) echo "macos" ;;
            CYGWIN*|MINGW*|MSYS*) echo "windows" ;;
            *)       echo "unknown" ;;
        esac
    }

    # 查看DNS配置
    show_dns() {
        case $(detect_os) in
            linux)
                echo -e "\n=== IPv4 DNS ==="
                resolvectl status | grep 'DNS Servers' -A2
                echo -e "\n=== IPv6 DNS ==="
                resolvectl status | grep 'DNS Servers' -A2 | tail -n +3
                ;;
            windows)
                ipconfig /all | findstr /C:"DNS Servers"
                ;;
            macos)
                networksetup -getdnsservers Wi-Fi
                ;;
        esac
    }

    # 通用DNS设置函数
    set_dns() {
        local mode=$1
        read -p "请输入DNS服务器地址（多个用逗号分隔）: " dns_input
        read -p "是否添加IPv6 DNS？(y/n): " ipv6_choice
        
        # 处理IPv4 DNS
        IFS=',' read -ra dns_array <<< "$dns_input"
        
        # 处理IPv6 DNS
        if [[ $ipv6_choice == "y" ]]; then
            read -p "请输入IPv6 DNS地址（多个用逗号分隔）: " ipv6_input
            IFS=',' read -ra ipv6_array <<< "$ipv6_input"
        fi

        case $(detect_os) in
            linux)
                if [[ $mode == "permanent" ]]; then
                    # 永久修改（Ubuntu示例）
                    sudo cp /etc/resolv.conf /etc/resolv.conf.bak
                    echo "# Generated by DNS Manager" | sudo tee /etc/resolv.conf >/dev/null
                    for dns in "${dns_array[@]}"; do
                        echo "nameserver $dns" | sudo tee -a /etc/resolv.conf >/dev/null
                    done
                    [[ $ipv6_choice == "y" ]] && for dns in "${ipv6_array[@]}"; do
                        echo "nameserver $dns" | sudo tee -a /etc/resolv.conf >/dev/null
                    done
                else
                    # 临时修改
                    sudo resolvectl dns $(ip route show default | awk '{print $5}') "${dns_array[@]}"
                    [[ $ipv6_choice == "y" ]] && sudo resolvectl dns $(ip route show default | awk '{print $5}') "${ipv6_array[@]}"
                fi
                ;;
            windows)
                interface=$(netsh interface show interface | grep 'Connected' | awk '{print $1}')
                # IPv4设置
                netsh interface ip set dns name="$interface" static "${dns_array[0]}" primary
                for ((i=1; i<${#dns_array[@]}; i++)); do
                    netsh interface ip add dns name="$interface" addr="${dns_array[$i]}" index=$((i+1))
                done
                # IPv6设置
                if [[ $ipv6_choice == "y" ]]; then
                    netsh interface ipv6 set dns name="$interface" static "${ipv6_array[0]}" primary
                    for ((i=1; i<${#ipv6_array[@]}; i++)); do
                        netsh interface ipv6 add dns name="$interface" addr="${ipv6_array[$i]}" index=$((i+1))
                    done
                fi
                ;;
            macos)
                networksetup -setdnsservers Wi-Fi "${dns_array[@]}"
                [[ $ipv6_choice == "y" ]] && networksetup -setdnsservers Wi-Fi "${ipv6_array[@]}"
                ;;
        esac
    }

    while true; do
        dns_menu
        read -p "请选择操作编号: " choice
        case $choice in
            1)
                clear
                show_dns
                ;;
            2)
                set_dns "permanent"
                echo "永久DNS设置已更新"
                ;;
            3)
                set_dns "temporary"
                echo "临时DNS设置已生效"
                ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -p "按回车继续..."
    done
}

#修改hosts
handle_hosts_option() {
    HOSTS_FILE="/etc/hosts"
    
    # 查看hosts文件
    view_hosts() {
        echo -e "\n=== 当前hosts文件内容 ==="
        sudo cat "$HOSTS_FILE" | grep -v '^#' | awk 'NF'
        echo -e "\n文件路径：$HOSTS_FILE"
    }

    # 自助修改
    auto_edit_hosts() {
        read -p "请输入IP地址（支持IPv4/IPv6）：" ip
        read -p "请输入域名（多个用逗号分隔）：" domains
        
        # 基础格式验证
        if [[ ! $ip =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] && 
           [[ ! $ip =~ ^([0-9a-fA-F]{0,4}:){2,7}[0-9a-fA-F]{0,4}$ ]]; then
            echo "错误：IP地址格式无效！"
            return 1
        fi

        # 转换逗号为空格
        domains=${domains//,/ }

        # 追加到hosts文件
        echo "$ip $domains" | sudo tee -a "$HOSTS_FILE" >/dev/null
        echo "已添加：$ip → $domains"
    }

    # 手动修改
    manual_edit_hosts() {
        # 检测默认编辑器
        editor=${EDITOR:-vim}
        
        echo -e "使用编辑器：\033[32m$editor\033[0m"
        read -p "按回车开始编辑..." _
        
        sudo "$editor" "$HOSTS_FILE"
        echo "修改已完成，建议执行以下命令刷新DNS缓存："
        echo "sudo systemctl restart systemd-resolved # Ubuntu/Debian"
        echo "sudo systemctl restart NetworkManager    # CentOS"
    }

    while true; do
        hosts_menu
        read -p "请选择操作编号: " choice
        case $choice in
            1) view_hosts ;;
            2) auto_edit_hosts ;;
            3) manual_edit_hosts ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -p "按回车继续..."
    done
}

handle_ipv6_option() {
    detect_os() {
        if [[ -f /etc/centos-release ]]; then
            echo "centos"
        elif [[ -f /etc/debian_version ]]; then
            echo "debian"
        elif [[ -f /etc/lsb-release ]]; then
            echo "ubuntu"
        else
            echo "unknown"
        fi
    }

    disable_permanent() {
        case $(detect_os) in
            centos)
                sudo sed -i '/disable_ipv6/d' /etc/sysctl.conf
                echo "net.ipv6.conf.all.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
                sudo sysctl -p
                sudo sed -i 's/IPV6INIT=yes/IPV6INIT=no/g' /etc/sysconfig/network-scripts/ifcfg-*
                sudo systemctl restart network
                ;;
            ubuntu|debian)
                sudo sed -i '/disable_ipv6/d' /etc/sysctl.conf
                echo "net.ipv6.conf.all.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
                sudo sysctl -p
                if [[ -d /etc/netplan ]]; then
                    sudo sed -i '/accept-ra:/d' /etc/netplan/*.yaml
                    echo "      accept-ra: no" | sudo tee -a /etc/netplan/*.yaml
                    sudo netplan apply
                else
                    sudo sed -i 's/iface [^ ]* inet6 auto/#&/' /etc/network/interfaces
                    sudo systemctl restart networking
                fi
                ;;
        esac
        echo "永久关闭IPv6完成，建议重启系统[1,4,6](@ref)"
    }

    disable_temporary() {
        echo 1 | sudo tee /proc/sys/net/ipv6/conf/all/disable_ipv6 >/dev/null
        echo "临时关闭IPv6完成，重启后失效[1,6](@ref)"
    }

    while true; do
        ipv6_menu
        read -p "请选择操作编号: " choice
        case $choice in
            1) disable_permanent ;;
            2) disable_temporary ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        echo -e "\n当前IPv6状态："
        ip -6 addr show 2>&1 | grep -q "inet6" && echo "IPv6仍启用" || echo "IPv6已禁用"
        read -p "按回车继续..."
    done
}

#bbr加速
handle_bbr_option() {
    # 检测IPv6支持状态
    check_ipv6_support() {
        sysctl net.ipv6.tcp_available_congestion_control 2>/dev/null | grep -q bbr
        return $?
    }

    # 查看BBR状态
    show_bbr_status() {
        echo -e "\n=== IPv4 BBR状态 ==="
        sysctl net.ipv4.tcp_congestion_control | awk '{print "当前算法："$3}'
        lsmod | grep bbr
        
        echo -e "\n=== IPv6 BBR状态 ==="
        if check_ipv6_support; then
            sysctl net.ipv6.tcp_congestion_control | awk '{print "当前算法："$3}'
        else
            echo "当前内核不支持IPv6 BBR"
        fi
    }

    # 开启BBR加速
    enable_bbr() {
        sudo bash -c 'cat > /etc/sysctl.d/99-bbr.conf << EOF
# BBR Configuration (IPv4/IPv6)
net.core.default_qdisc = fq
net.ipv4.tcp_congestion_control = bbr
net.ipv6.tcp_congestion_control = bbr
EOF'
        sudo sysctl -p /etc/sysctl.d/99-bbr.conf
        echo "BBR加速已启用（IPv4/IPv6双栈）"
    }

    # 关闭BBR加速
    disable_bbr() {
        sudo rm -f /etc/sysctl.d/99-bbr.conf
        sudo sysctl -w net.core.default_qdisc=pfifo_fast
        sudo sysctl -w net.ipv4.tcp_congestion_control=cubic
        sudo sysctl -w net.ipv6.tcp_congestion_control=cubic
        echo "BBR加速已关闭"
    }

    while true; do
        bbr_menu
        read -p "请选择操作编号: " choice
        case $choice in
            1) show_bbr_status ;;
            2) enable_bbr ;;
            3) disable_bbr ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -p "按回车继续..."
    done
}










#################二级菜单处理#################
# 系统工具菜单
handle_system_menu() {
    while true; do
    system_menu
        read -p "请选择序号: " choice
        case $choice in
            1) change_repo ;;
            2) install_dependencies ;;
            3) kernel_main ;;
            4) sync_time ;;
            5) handle_ssh_choice ;;
            6) echo "功能待实现，请选择其他选项" ;;
            7) echo "功能待实现，请选择其他选项" ;;
            8) handle_mount_disk_option ;;
            9) handle_swap_option ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -p "按回车继续..."
    done
}

# 网络工具菜单
handle_network_menu() {
    while true; do
        network_menu
        read -p "请选择操作编号: " choice
        case $choice in
            1) handle_firewall_option ;;
            2) handle_dns_option ;;
            3) handle_hosts_option ;;
            4) handle_ipv6_option ;;
            5) handle_bbr_option ;;
            6) echo "功能待实现，请选择其他选项" ;;
            0)
                show_menu
                break
                ;;
            *)
                echo "无效选择，请重新输入。"
                read -p "按任意键重试..." -n 1 -s
                ;;
        esac
        read -p "按回车继续..."
    done
}




#################主循环菜单处理#################
while true; do
    show_menu
    read -p "请选择操作编号: " main_choice
    case $main_choice in
        1) handle_system_menu ;;
        2) handle_network_menu ;;
        3|4|5) echo "功能开发中，敬请期待..." ;;
        0) 
            echo "感谢使用，再见！"
            exit 0
            ;;
        *) echo "无效选择，请重新输入。" ;;
    esac
    read -p "按回车继续..."
done