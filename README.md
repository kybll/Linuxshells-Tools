# Linux 工具箱

一款功能强大的 Linux 系统管理脚本工具，支持中文/英文显示，提供服务器常用运维功能。

![功能演示](https://img.shields.io/badge/版本-v0.1-blue) 
![授权协议](https://img.shields.io/badge/License-MIT-green)

## 内容简介

### 核心功能
- **系统管理**  
  重启服务器 | 修改用户密码 | 修改SSH端口 | 时间同步
- **磁盘管理**  
  智能挂载/卸载数据盘 | 可视化磁盘信息查看
- **软件管理**  
  YUM源优化 | 多平台wget安装 | 宝塔面板一键部署

### 技术特性
- 智能兼容主流 Linux 发行版（CentOS/Debian/Ubuntu等）
- 中英双语自适应显示
- 终端颜色高亮输出
- 关键操作二次确认机制
- 系统信息实时监控显示

## 操作说明

### 快速启动
```bash
# 下载脚本
wget https://raw.githubusercontent.com/kybll/Linuxshells-Tools/main/V0.1.sh

# 添加执行权限
chmod +x V0.1.sh

# 运行脚本（自动请求root权限）
./V0.1.sh
```

### 主菜单导航
```
[系统管理菜单]
  1. 重启服务器       - 安全重启系统
  2. 修改用户密码     - 支持任意用户密码修改
  3. 修改SSH端口     - 自动配置防火墙/SELinux
  4. 同步上海时间     - 自动校时并显示结果

[磁盘管理菜单]
  1. 挂载数据盘       - 交互式分区挂载
  2. 卸载数据盘       - 可视化卸载选择
  3. 查看磁盘信息     - 显示详细存储状态

[软件管理菜单]
  1. 更新YUM源       - 国内镜像加速
  2. 安装wget        - 多平台自动适配
  3. 安装宝塔面板    - 官方最新版一键安装
```

### 典型使用场景
1. **挂载新磁盘**
   - 自动检测设备有效性
   - 智能创建挂载目录
   - 持久化挂载配置

2. **修改SSH端口**
   ```bash
   # 示例操作流程：
   选择 [系统管理菜单] -> 输入3
   输入新端口：54322
   ✔ 自动配置防火墙规则
   ✔ 自动处理SELinux策略
   ✔ 生成验证命令：ssh -p 54322 user@server_ip
   ```

3. **安装软件**
   - wget安装支持自动编译
   - 宝塔面板使用官方安装脚本
   - YUM源优化适配国内网络

## 引用说明

### 开源项目
- [Linux 镜像源助手](https://linuxmirrors.cn) - YUM/APT源优化脚本
- [宝塔面板](https://www.bt.cn) - 服务器运维面板
- [GNU wget](https://www.gnu.org/software/wget/) - 文件下载工具

### 重要资源
```bash
# 项目地址
https://github.com/kybll/Linuxshells-Tools

# 宝塔安装脚本
https://download.bt.cn/install/install_panel.sh

# 时间同步服务器
ntp.aliyun.com
```

## 注意事项
1. 数据盘操作前建议备份重要数据
2. 修改SSH端口后请确认新端口可访问
3. 部分功能依赖网络连接
4. 建议在screen/tmux会话中运行长时间操作

> 本项目遵循 MIT 开源协议，欢迎提交 Issue 和 PR 共同改进！
