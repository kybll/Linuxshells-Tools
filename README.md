# Linux工具箱脚本

![功能演示](https://img.shields.io/badge/版本-v0.3-blue)
![授权协议](https://img.shields.io/badge/License-MIT-green)

[Latest文档](https://github.com/kybll/Linuxshells-Tools/blob/master/README.md)|[V0.2文档](https://github.com/kybll/Linuxshells-Tools/blob/master/V0.2%20README.md)|[V0.1文档](https://github.com/kybll/Linuxshells-Tools/blob/master/V0.1%20README.md)

## 内容简介

### 项目概述

本脚本是一个集成化Linux系统管理工具箱，提供从基础运维到高级配置的​**50+项实用功能**​，支持**CentOS/Debian/Ubuntu**等主流发行版。脚本采用模块化设计，通过三级菜单实现功能导航，主要模块包括：

* 🛠️ ​**系统工具**​：软件源管理/内核更新/SSH配置/硬盘挂载/Swap管理
* 🌐 ​**网络工具**​：防火墙管理/DNS配置/IPv6控制/BBR加速
* 🖥️ ​**面板工具**​：宝塔/1Panel/青龙等常见面板的快速部署
* 📊 ​**VPS测试**​：性能基准测试/网络质量检测

### 核心特性

* 交互式彩色菜单界面
* 自动化依赖检测与安装
* 关键操作备份机制
* 多架构兼容（x86\_64/ARM）
* 详尽的错误日志记录

## 操作说明

### 快速开始

```bash
# 下载脚本
wget https://github.com/kybll/Linuxshells-Tools/raw/refs/heads/master/V0.3.sh

# 添加执行权限
chmod +x V0.3.sh

# 运行脚本
./V0.3.sh
```

## 引用说明

### 依赖组件

| 组件名称 | 来源链接     | 用途               |
| ---------- | -------------- | -------------------- |
| repo.sh  | **kybll.cn** | 软件源更换核心逻辑 |


## 扩展信息

### 兼容性矩阵

| 功能模块     | CentOS 7 | Ubuntu 22 | Debian 11 |
| -------------- | ---------- | ----------- | ----------- |
| 内核升级     | ✔️     | ✔️      | ✔️      |
| IPv6管理     | ✔️     | ✔️      | ✔️      |
| 宝塔面板安装 | ✔️     | ✔️      | ✔️        |

### 开发计划

* [ ] Docker容器管理模块
* [ ] 安全审计功能
* [ ] 自动化备份系统
* [ ] 完善功能
* [ ] 修补代码

> 📌 提示：使用过程中如遇异常，可尝试`export DEBUG_MODE=1`开启调试模式获取详细信息

---

## 注意事项

1. 数据盘操作前建议备份重要数据
2. 修改SSH端口后请确认新端口可访问
3. 部分功能依赖网络连接
4. 建议在screen/tmux会话中运行长时间操作

> 本项目遵循 MIT 开源协议，欢迎提交 Issue 和 PR 共同改进！
