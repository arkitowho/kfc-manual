# 优化运行性能

!!! quote "说明"

    许多资料整合并简化自spice2x官方手册

## 系统优化

!!! info ""

    - 禁用`Hyper-V`、`虚拟机管理平台`、`VBS (Virtualization-Based Security)`

    ??? tips "操作方法"

        按`Win+R`，输入optionalfeatures，将`Hyper-V`、`虚拟机平台`禁用

        ![img](../img/optimize/optionalfeatures.jpg)

        打开开始菜单，搜索`内核隔离`，关闭内存完整性

        ![img](../img/optimize/search.jpg)

        ![img](../img/optimize/coreisolation.jpg)

    - 禁用全屏优化

        - 右键单击​`spice64.exe`，选择“属性”，“兼容性”选项卡，更改所有用户的设置，然后勾选`禁用全屏优化Disable fullscreen optimizations`

## 电源管理

!!! info ""

    - 确保你的电源选项保持默认，或者启用高性能模式

    !!! tips

        如果你的游戏帧率不正常（例如只能跑到50帧，90帧，跳帧很严重），大概率是电源选项被篡改（例如运行过早期版本的三角洲行动被修改了电源选项锁定了CPU频率）

        请以管理员身份运行`PowerShell`或者`命令提示符`，执行以下命令重置电源选项，并重启电脑

        `powercfg -restoredefaultschemes`

        !!! warning 

            笔记本用户请酌情运行，他会将你厂商自带的电源选项全部清空
