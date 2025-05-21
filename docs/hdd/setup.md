# 部署

!!! warning

    - 本文不会使用懒人包，将通过纯净包讲解

    - 进行部署前请确保你的文件来源纯净，因为下载到脏文件导致的各种问题，以及携带病毒请自行解决

----

## 检查文件结构

!!! info ""

    一个干净完整的文件结构应该如下

    ```
    PATH: content
    ├─data  # 游戏数据
    ├─ext   # 外部硬件数据，应该是打印机的
    ├─modules   # 游戏依赖与主进程
    └─prop  # 游戏属性

    ```
    ![img](../img/install/folder.png)

??? tips "我有一堆DLL文件且没有`modules`文件夹"

    请新建一个文件夹并将所有`.dll`文件全部剪切到`modules`文件夹内

    ![img](../img/install/modules.png)

??? tips "我有一个`dev`文件夹"

    dev文件夹存放的是游戏配置信息，没有的情况下可使游戏恢复出厂设置并重新生成配置信息

    你可以选择保留，或者删除并在初次启动时重新矫正旋钮

----

## 安装Spice2x

!!! info ""

    [Spice2x](https://spice2x.github.io/){ .md-button .md-button--primary }

    从上方的网站下载最新稳定版本

    ![img](../img/install/spice-download.png)

    下载后应该如图

    ![img](../img/install/spice-zip.png)

    你只需要将`spicecfg`,`spice64.exe`，解压到游戏目录与data平级即可完成安装

    ![img](../img/install/spice-installed.png)

??? warning "如果你是AMD/Intel显卡的用户"

    你还需要将spice压缩包里的`stubs/64`里的三个dll文件复制到游戏目录的`modules`文件夹里，其余的文件是没必要的

    ![img](../img/install/stubs-installed.png)

----

## 设置Spice2X

### Buttons

!!! info ""

    绑定你控制器，需要绑定的按键如下图，点击Bind，找到对应的按钮按下即可

    对于旋钮，你需要绑定Analogs页面里的`VOL-L`，`VOL-R`，而不是Buttons页面的`VOL-L Left`，`VOL-L Right`，`VOL-R Left`，`VOL-R Right`

    ![img](../img/install/button-layout.png)

    除此以外你还需要绑定`Service`键与`Test`键用于调整游戏内配置，个人习惯是F1绑定Service，F2绑定Test

    ![img](../img/install/maintenance-key.png)

??? tips "Bind与Naive的区别"

    Bind会跟随硬件，例如你绑定了法务司手台，插上源台需要重新绑定一次，手台按钮通常使用这个绑定

    Naive则是使用特征码，无论什么设备只要输出的是相同的特征码即可通用，一般用于绑定键盘

    同时在2025-05-09版本后的spice，绑定Naive的键在窗口不在前台时（或者说不在焦点时）不会被游戏接受，Bind则保持原来的模式

### Cards
!!! danger "请妥善保管你的卡号以免泄露"

!!! info ""

    此处设定你的卡号，对于SDVX，你只需要设置Player 1，如果你没有实体卡，请点击`Generate`生成一个虚拟卡号，生成后会在游戏目录生成`card0.txt`保存

    ![img](../img/install/cards.png)

    如果你有实体卡，且拥有读卡器，请根据读卡器卖家的说明开启spice里对应的模块，在下方的NFC card reader status读卡即可获取你实体卡NFC ID（IDm）形式的一串卡号，填入Player 1的Card Number即可（并非卡背后的Access Code）

    ![img](../img/install/nfc.png)

    如果你有实体卡，但没有读卡器，你可以在以下任意一个网站里转换Access Code为NFC ID（IDm）

    - [card.bsnk.me](https://card.bsnk.me/)

    如果你使用iPhone，你可以在应用商店下载"NFC Tools"，读卡，Serial Number去掉冒号就是NFC ID（IDm）

    如果你使用日版安卓机（支持Osaifu-Keidai与Felica），也可以用上述方法读取

### Patches

!!! info ""

    此处用于给游戏打补丁，修改游戏

    新安装的游戏不会在这里有任何东西，你需要点击`Import from URL`导入补丁，可从以下两个地址导入

    - https://sp2x.two-torial.xyz

    - https://cdn.jsdelivr.net/gh/two-torial/sp2xpatcher/patches/

    优先使用第一个，如果报错无法访问第一个，请使用第二个

    Overwrite game files表示将补丁硬编码至文件（不建议）

    记得勾上Auto apply patches on game start来应用补丁

    ![img](../img/install/patcher.png)

    !!! warning

        请仅打需要的补丁，不要启用你不知道的

    | 功能 | 说明 | 推荐值 |
    | --- | --- | --- |
    | `Game FPS Target` | 游戏目标帧率 | 推荐不启用，如果帧率不对则60FPS for 60Hz屏幕，120FPS for 120Hz以上屏幕 |
    | `Note FPS Target` | 铺面目标帧率 | 同上 |
    | `Shared mode WASAPI` | 共享式WASAPI | 建议保持关闭以保证最佳延迟，如果没有声音或需要游戏以外的声音请开启 |
    | `Hide premium guide banner` |  | |
    | `Hide all bottom text` | 隐藏底栏的文字（PASELI，CREDIT） | 都可 |
    | `Standatd/Menu Timer Freeze` | 标准/菜单计时器冻结 | On |
    | `Premium Free Timer Freeze` | 自由模式计时器冻结 | On | 
    | `Premium Time Length` | 由模式计时器时长 | 不启用冻结时自行延长 |
    | `Fake Region` | 区域伪装 |  |
    | `Force English Sort Optons` | 分类菜单使用英语 | 都可 |
    | `ASIO 2 Channels Mode` | ASIO模式使用2通道 | 如果你使用的声卡没有多通道则On |
    | `Disable power change` | 禁用电源选项更改 | On |
    | `Disable monitor change` | 禁用显示器更改 | On |
    | `Disable Subscreen in Valkyrie mode` | 女武神模式下禁用副屏幕 | 都可 |
    | `Valkyrie Mode 60Hz` | 女武神模式使用60Hz刷新率 | 建议Off |
    | `Force BIO2（KFC）IO in Valkyrie mode` | 强制Valkyrie使用Nemsys的IO | Off，如果使用框体则自行考虑 |
    | `Force Enable Headphones` | 强制启用耳机孔检测 | 都可 |

### Options

!!! info ""

    需要设定
    
    | 功能 | 说明 | 推荐值 |
    | --- | --- | --- |
    | `SDVX Disable Cameras` | 禁用摄像头 | On |
    | `EA Service URL` | EA服务器URL | 见下文[连接服务器](#_3) |
    | `NVIDIA profile optimization` | NVIDIA优化配置 | On，**_AMD/Intel显卡除外_** |
    | `Low Latency Shared Audio` | 低延迟共享音频 | On，可降低使用DirectSound或者Shared WASAPI时的延迟 |

----

## 连接服务器

!!! info ""

    二选一

??? info "连接在线服务器（MaoMaNi）"

    猫网，用爱发电的免邀请制公共SDVX，IIDX服务器，获得Service URL即可连接，无需PCBID

    - 猫网SDVX群：1035700815

    - 猫网后台：https://maomani.cn

    ----

    在Spice的Options选项卡，EA Service URL里填入 `http://maomani.cn:573`

    PCBID留空或者自己生成一个

    ![img](../img/install/maomani-setting.png)

??? info "连接本地服务器（Asphyxia）"

    [见此页](asphyxia.md)

----

## 首次启动游戏

!!! info ""

    双击`spice64.exe`启动游戏

    如果你使用本地服务器，需要在启动前先启动氧无，在氧无的文件夹里双击`asphyxia-core-x64.exe`启动，否则后续游戏自建时会报错

### 校准旋钮

!!! info ""

    首次启动游戏通常会要求你校准旋钮，如果你见到这个页面，请按下TEST（你上面绑定的）进入测试模式

    - `BT-A`向上移动
    - `BT-B`向下移动
    - `Start`确认

    ![img](../img/install/calibration.png)

    进入`I/O CHECK`，选择`CALIBRATION SETTINGS`

    ![img](../img/install/calibration-test.png)

    ![img](../img/install/calibration-test2.png)
    
    1. 将左旋钮逆时针旋转3圈以上直到显示`COUNT=OK`，按下Start

    2. 将左旋钮顺时针旋转3圈以上直到显示`COUNT=OK`，按下Start

    3. 将右旋钮逆时针旋转3圈以上直到显示`COUNT=OK`，按下Start

    4. 将右旋钮顺时针旋转3圈以上直到显示`COUNT=OK`，按下Start

    ![img](../img/install/calibration-test3.png)

    移动到`SAVE AND EXIT`，确认，完成校准

### 投币设定

!!! info ""

    不设定投币TEST会一直显示`500円を超える価格設定があります（设定价格总计超过500日元）`，解决方法也很简单

    你只需要进入`COIN OPTIONS`

    ![img](../img/install/coin-options.png)

    选择`FACTORY SETTINGS`，确认，`SAVE AND EXIT`退出即可

    ![img](../img/install/coin-options-2.png)

!!! warning 

    请勿开启`FREE PLAY`，会导致Premium Time以及一些模式被锁定

### 退出测试模式

!!! info ""

    ![img](../img/install/exit-test.png)

    选择GAME MODE即可

----

## 读卡

!!! info ""

    在主菜单按小键盘的`+`号键进行读卡操作，默认读取Player 1的设定卡号

    如果你没有小键盘请在[Buttons](#buttons)里重新绑定`P1 Keypad Insert Card`

----

## 退出游戏

!!! info ""

    三种方式

    - 按`ESC`，选择`Exit Game`
    
    ![img](../img/install/exit-esc.png)

    - 按`F4`，在Spice顶栏找到`Power`，选择`Exit Game`

    ![img](../img/install/exit-power.png)

    - Alt + F4

----

## 一键启动脚本

!!! info ""

    每次启动游戏都需要手动运行Asphyxia和Spice，比较麻烦，可以写一个脚本一键调用，如果你按照我的教程配置好了，那么下面的批处理内容你可以照搬

    将`.bat`文件放置到spice64.exe旁边，双击即可启动

    这里可以[下载](../public/start.bat)下述的启动脚本

```bat

@echo off
pushd %~dp0

title Launch SOUND VOLTEX EXCEED GEAR 

echo Booting Game....

echo Launch Asphyxia...
start /min ../asphyxia-core-win-x64/asphyxia-core-x64.exe

echo Launch Game...
start /wait spice64.exe -url localhost:8083

echo Exit all task...
taskkill /f /t /im asphyxia-core-x64.exe > nul 2>&1
taskkill /f /t /im spice64.exe > nul 2>&1

pause

```

----

## 疑难杂症

!!! tip "前往[常见问题](extras/troubleshoot.md)查看"