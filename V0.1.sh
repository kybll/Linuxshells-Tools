#!/bin/bash

# 强制以root权限运行
if [ "$(id -u)" != "0" ]; then
    exec sudo "\$0" "$@"
    exit $?
fi

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # 恢复默认颜色

# 全局变量
server_ip=$(curl ifconfig.me)
uptime_cn=$(uptime -p | sed '
    s/up/已运行/;
    s/weeks\?/周/;
    s/days\?/天/;
    s/hours\?/时/;
    s/minutes\?/分/;
    s/,//g;')

# 获取系统信息
source /etc/os-release
os_info=$PRETTY_NAME
current_time=$(date "+%Y-%m-%d %H:%M:%S %Z")

# 万能wget安装脚本
install_wget_universal() {
    # 系统检测
    detect_os() {
        if [ -f /etc/os-release ]; then
            . /etc/os-release
            OS_ID="$ID"
            OS_VERSION_ID="$VERSION_ID"
        elif type lsb_release >/dev/null 2>&1; then
            OS_ID=$(lsb_release -si | tr '[:upper:]' '[:lower:]')
            OS_VERSION_ID=$(lsb_release -sr)
        else
            echo -e "${RED}[!] 无法检测Linux发行版${NC}"
            exit 1
        fi

        case "$OS_ID" in
            debian|ubuntu|linuxmint)
                PKG_MGR="apt-get"
                ;;
            centos|rhel|ol)
                PKG_MGR="yum"
                ;;
            fedora)
                PKG_MGR="dnf"
                ;;
            arch|manjaro)
                PKG_MGR="pacman"
                ;;
            opensuse*|sled|sles)
                PKG_MGR="zypper"
                ;;
            *)
                echo -e "${RED}[!] 不支持的发行版: $OS_ID${NC}"
                exit 1
                ;;
        esac
    }

    # 安装依赖
    install_deps() {
        if command -v wget &> /dev/null; then
            echo -e "${GREEN}[✓] wget 已安装${NC}"
            return 0
        fi

        echo -e "${BLUE}[*] 正在安装wget...${NC}"

        case "$PKG_MGR" in
            apt-get)
                sudo apt-get update || {
                    echo -e "${RED}[!] 更新软件源失败${NC}"
                    return 1
                }
                sudo apt-get install -y wget
                ;;
            yum)
                sudo yum install -y wget
                ;;
            dnf)
                sudo dnf install -y wget
                ;;
            pacman)
                sudo pacman -Sy --noconfirm wget
                ;;
            zypper)
                sudo zypper refresh || {
                    echo -e "${YELLOW}[!] 仓库刷新失败，尝试继续安装...${NC}"
                }
                sudo zypper install -y wget
                ;;
        esac

        # 验证安装
        if ! command -v wget &> /dev/null; then
            echo -e "${RED}[!] wget 安装失败${NC}"
            return 1
        fi

        echo -e "${GREEN}[✓] wget 安装成功${NC}"
        return 0
    }

    # 异常处理
    trap 'echo -e "${RED}[!] 用户中断操作${NC}"; exit 130' INT
    trap 'echo -e "${RED}[!] 发生严重错误${NC}"; exit 1' TERM

    # 主程序
    main() {
        # 检测系统
        detect_os
        echo -e "${BLUE}[*] 检测到系统: ${GREEN}$OS_ID${BLUE} 版本: ${GREEN}$OS_VERSION_ID${NC}"

        # 安装wget
        if ! install_deps; then
            # 备用安装方法
            echo -e "${YELLOW}[!] 尝试源码编译安装...${NC}"
            
            temp_dir=$(mktemp -d)
            cd "$temp_dir" || exit 1
            
            echo -e "${BLUE}[*] 下载wget源码...${NC}"
            curl -sLO https://ftp.gnu.org/gnu/wget/wget-latest.tar.gz || {
                echo -e "${RED}[!] 源码下载失败${NC}"
                exit 1
            }

            tar xzf wget-latest.tar.gz
            cd wget-* || exit 1

            echo -e "${BLUE}[*] 编译安装...${NC}"
            ./configure --prefix=/usr/local \
                --sysconfdir=/etc \
                --with-ssl=openssl >> /tmp/wget_install.log 2>&1

            make -j$(nproc) >> /tmp/wget_install.log 2>&1
            sudo make install >> /tmp/wget_install.log 2>&1

            # 验证安装
            if /usr/local/bin/wget --version &> /dev/null; then
                echo -e "${GREEN}[✓] 源码编译安装成功${NC}"
            else
                echo -e "${RED}[!] 源码安装失败，查看日志: /tmp/wget_install.log${NC}"
                exit 1
            fi
        fi

        # 版本验证
        echo -e "${BLUE}[*] 安装版本信息:${NC}"
        wget --version | head -n1
    }

    # 执行主程序
    main
}

# 主菜单
show_main_menu() { 
    clear
    echo -e "${GREEN}=============================================${NC}"
    echo -e "${BLUE}             Linux 工具箱 v0.1             ${NC}"
    echo -e "${GREEN}=============================================${NC}"
    echo -e "Github: https://github.com/kybll/Linuxshells-Tools"
    echo -e "使用MIT开源许可协议"
    echo -e "${GREEN}---------------------------------------------${NC}"
    echo -e "${YELLOW}▶ 服务器IP   : ${GREEN}$server_ip${NC}"
    echo -e "${YELLOW}▶ 运行时间   : ${GREEN}$uptime_cn${NC}"
    echo -e "${YELLOW}▶ 系统时间   : ${GREEN}$current_time${NC}"
    echo -e "${YELLOW}▶ 运行环境   : ${GREEN}$os_info${NC}"
    echo -e "${YELLOW}▶ 系统架构   : ${GREEN}$(uname -m) [$(getconf LONG_BIT)位]${NC}"
    echo -e "${GREEN}---------------------------------------------${NC}"
    echo -e "1. 系统管理菜单"
    echo -e "2. 磁盘管理菜单"
    echo -e "3. 软件管理菜单"
    echo -e "4. 退出工具箱"
    echo -e "${GREEN}=============================================${NC}"
}

# 系统管理菜单
show_system_menu() {
    clear
    echo -e "${GREEN}===================================${NC}"
    echo -e "${BLUE}         系统管理菜单${NC}"
    echo -e "${GREEN}===================================${NC}"
    echo -e "1. 重启服务器"
    echo -e "2. 修改用户密码"
    echo -e "3. 修改SSH端口"
    echo -e "4. 同步上海时间"
    echo -e "5. 返回主菜单"
    echo -e "${GREEN}===================================${NC}"
}

# 磁盘管理菜单
show_disk_menu() {
    clear
    echo -e "${GREEN}===================================${NC}"
    echo -e "${BLUE}         磁盘管理菜单${NC}"
    echo -e "${GREEN}===================================${NC}"
    echo -e "1. 挂载数据盘"
    echo -e "2. 卸载数据盘"
    echo -e "3. 查看磁盘信息"
    echo -e "4. 返回主菜单"
    echo -e "${GREEN}===================================${NC}"
}

# 软件管理菜单
show_software_menu() {
    clear
    echo -e "${GREEN}===================================${NC}"
    echo -e "${BLUE}         软件管理菜单${NC}"
    echo -e "${GREEN}===================================${NC}"
    echo -e "1. 更新YUM源"
    echo -e "2. 安装wget"
    echo -e "3. 安装宝塔面板"
    echo -e "4. 返回主菜单"
    echo -e "${GREEN}===================================${NC}"
}

# 挂载数据盘
mount_data_disk() {
    read -p "$(echo -e "${YELLOW}请输入数据盘设备名 [默认：/dev/vdb1]: ${NC}")" disk_device
    disk_device=${disk_device:-"/dev/vdb1"}

    read -p "$(echo -e "${YELLOW}请输入挂载点目录 [默认：/data]: ${NC}")" mount_point
    mount_point=${mount_point:-"/data"}

    # 检查挂载点目录是否存在，不存在则创建
    if [ ! -d "$mount_point" ]; then
        echo -e "${YELLOW}创建挂载目录: ${BLUE}$mount_point${NC}"
        sudo mkdir -p "$mount_point"
    fi

    # 检查数据盘是否已经被挂载
    if grep -qs "$disk_device " /proc/mounts; then
        echo -e "${RED}错误：数据盘 ${BLUE}$disk_device${RED} 已经被挂载${NC}"
        return
    fi

    # 检查数据盘是否存在并且为块设备
    if [ ! -b "$disk_device" ]; then
        echo -e "${RED}错误：设备 ${BLUE}$disk_device${RED} 不存在或不是块设备${NC}"
        return
    fi

    # 挂载数据盘
    echo -e "${GREEN}正在挂载设备 ${BLUE}$disk_device${GREEN} 到 ${BLUE}$mount_point${NC}"
    sudo mount "$disk_device" "$mount_point"

    # 更新 fstab
    echo -e "${YELLOW}正在配置开机自动挂载...${NC}"
    echo "$disk_device $mount_point ext4 defaults 0 2" | sudo tee -a /etc/fstab

    # 结果提示
    echo -e "${GREEN}挂载成功！详细信息："
    echo -e "设备路径: ${BLUE}$disk_device${NC}"
    echo -e "挂载点: ${BLUE}$mount_point${NC}"
    df -h | grep "$mount_point"
}

# 卸载数据盘
unmount_data_disk() {
    # 使用lsblk检测已挂载的非系统磁盘
    mounted_disks=$(lsblk -lp -o NAME,MOUNTPOINT | awk '$2!="" && $2!="/" && $2!="/boot" {print $1 "->" $2}')
    
    if [ -z "$mounted_disks" ]; then
        echo -e "\033[31m未找到可卸载的数据盘\033[0m"
        return 1
    fi

    # 交互式选择要卸载的磁盘
    echo -e "\033[36m已挂载的数据盘列表：\033[0m"
    PS3="请选择要卸载的磁盘编号："
    select mount_info in $mounted_disks; do
        [ -n "$mount_info" ] && break
    done

    # 解析设备路径和挂载点
    disk_device=$(echo $mount_info | awk -F'->' '{print $1}')
    mount_point=$(echo $mount_info | awk -F'->' '{print $2}')

    # 获取UUID用于清理fstab
    disk_uuid=$(blkid -s UUID -o value $disk_device)

    # 卸载流程
    echo -e "\n\033[33m正在卸载 $disk_device ...\033[0m"
    
    # 检查文件系统是否繁忙
    if lsof +D $mount_point &> /dev/null; then
        echo -e "\033[31m错误：挂载点 $mount_point 正在被使用\033[0m"
        echo -e "占用进程："
        lsof +D $mount_point | awk 'NR==1 || $NF~/\<'${mount_point}'/ {print}'
        read -p "是否强制卸载？(y/N): " force_choice
        [[ $force_choice != "y" ]] && return 1
    fi

    # 执行卸载
    if ! umount $disk_device; then
        echo -e "\033[31m卸载失败！可能原因：\033[0m"
        echo -e "1. 设备未正确挂载"
        echo -e "2. 内核缓存未更新"
        echo -e "3. 硬件连接异常"
        return 2
    fi

    # 清理fstab（同时处理设备路径和UUID两种写法）
    cp /etc/fstab /etc/fstab.bak  # 备份重要文件
    sed -i "\|^$disk_device|d;\|^UUID=$disk_uuid|d" /etc/fstab

    # 二次验证
    if grep -q $mount_point /proc/mounts; then
        echo -e "\033[31m警告：卸载成功但系统仍显示挂载，尝试强制刷新...\033[0m"
        systemctl daemon-reload
        sleep 2
    fi

    # 结果提示
    echo -e "\033[32m成功卸载 $disk_device\033[0m"
    echo -e "操作摘要："
    echo -e "设备路径：\033[33m$disk_device\033[0m"
    echo -e "挂载点：\033[33m$mount_point\033[0m"
    echo -e "UUID：\033[33m$disk_uuid\033[0m"
    
    # 清理挂载点目录
    read -p "是否删除挂载点目录？(y/N): " del_dir
    [[ $del_dir == "y" ]] && rm -rf $mount_point
}

# 系统管理功能
handle_system_menu() {
    while true; do
        show_system_menu
        read -p "请选择操作 [1-5]: " choice
        case $choice in
            1) 
                echo -e "${RED}正在重启服务器...${NC}"
                reboot
                ;;
            2)
                read -p "输入用户名: " username
                if id "$username" &>/dev/null; then
                    passwd $username
                else
                    echo -e "${RED}用户不存在！${NC}"
                fi
                ;;
            3)
                read -p "输入新SSH端口 (22-65535): " port

              # 验证端口格式
               [[ ! $port =~ ^[0-9]+$ || $port -lt 22 || $port -gt 65535 ]] && 
                echo -e "${RED}无效端口号！${NC}" && exit 1

              # 备份配置文件
                sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

              # 清理旧端口配置并添加新端口
                sudo sed -i '/^Port/d;/^#Port/d' /etc/ssh/sshd_config
                echo "Port $port" | sudo tee -a /etc/ssh/sshd_config

              # 重启服务
                sudo systemctl restart sshd
                [ $? -ne 0 ] && echo -e "${RED}SSH服务重启失败，请检查配置！${NC}" && exit 2

              # 防火墙配置
                if command -v firewall-cmd &> /dev/null; then
                   sudo firewall-cmd --permanent --add-port=$port/tcp
                   sudo firewall-cmd --reload
                elif command -v ufw &> /dev/null; then
                   sudo ufw allow $port/tcp
                   sudo ufw reload
                else
                   echo -e "${YELLOW}未检测到防火墙，请手动配置iptables${NC}"
                fi

              # SELinux配置
                if sestatus | grep -q "enabled"; then
                   sudo semanage port -a -t ssh_port_t -p tcp $port || {
                      echo -e "${RED}SELinux规则添加失败，尝试手动执行："
                      echo -e "sudo semanage port -a -t ssh_port_t -p tcp $port${NC}"
                       }
                fi

                    echo -e "${GREEN}配置完成！请通过以下命令验证："
                    echo -e "ssh -p $port $(whoami)@$(curl -s ifconfig.me)${NC}"
                  ;;
            4)
                timedatectl set-timezone Asia/Shanghai
                systemctl restart systemd-timesyncd
                echo -e "${GREEN}当前时间: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
                ;;
            5) return ;;
            *) echo -e "${RED}无效选择！${NC}" ;;
        esac
        read -p "按回车继续..."
    done
}

# 软件管理功能
handle_software_menu() {
    while true; do
        show_software_menu
        read -p "请选择操作 [1-4]: " soft_choice
        case $soft_choice in
            1) 
                echo -e "${YELLOW}正在优化YUM源...${NC}"
                bash <(curl -sSL https://linuxmirrors.cn/main.sh)
                ;;
            2) 
                install_wget_universal
                ;;
            3)
                echo -e "${YELLOW}正在安装宝塔面板...${NC}"
                curl -sSO https://download.bt.cn/install/install_panel.sh
                bash install_panel.sh 19e49bd8
                ;;
            4) break ;;
            *) echo -e "${RED}无效选择！${NC}" ;;
        esac
        read -p "按回车继续..."
    done
}

# 主程序循环
while true; do
    show_main_menu
    read -p "请输入选项 [1-4]: " main_choice
    
    case $main_choice in
        1) handle_system_menu ;;
        2)
            while true; do
                show_disk_menu
                read -p "请选择操作 [1-4]: " disk_choice
                case $disk_choice in
                    1) mount_data_disk ;;
                    2) unmount_data_disk ;;
                    3) 
                        echo -e "${GREEN}磁盘使用情况：${NC}"
                        df -h
                        echo -e "\n${GREEN}物理磁盘列表：${NC}"
                        lsblk -d -o NAME,SIZE,MODEL,MOUNTPOINT
                        ;;
                    4) break ;;
                    *) echo -e "${RED}无效选择！${NC}" ;;
                esac
                read -p "按回车继续..."
            done
            ;;
        3) handle_software_menu ;;
        4)
            echo -e "${GREEN}感谢使用，再见！${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}无效选项，请重新输入！${NC}"
            sleep 1
            ;;
    esac
done