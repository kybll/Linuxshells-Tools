#!/bin/bash
#Author: Yoiyun
#Date: 2025-2-9
#Description: 内核更新脚本
#Website: https://linuxshells.cn/kernel

collect_system_info() {
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
    collect_system_info

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

kernel_main "$@"