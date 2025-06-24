# 常见问题

## 无法游玩Standard Start/回线冗杂

!!! info ""

    2025042202版本新增了一个参数，更新包内未提供需要手动加一下，否则会导致Standard Start后无法保存数据，回线冗杂

    你需要打开游戏`prop/ea3-config.xml`文件，找到`kfc_game_s_standard`树（大概480多行的位置，可以Ctrl+F打开搜索框），在他的下方再添加一串新参数
    ```xml
    <kfc_game_s_standard_plus>
      <type __type="str">consume</type>
      <event __type="str">KFC.game.s.standard_plus</event>
      <player_ref __type="str">/coin/player1/ref_slotid</player_ref>
      <credit_ref __type="str">/coin/event</credit_ref>
    </kfc_game_s_standard_plus>
    ```
    最终如图
    ```xml hl_lines="7-12"
    <kfc_game_s_standard>
      <type __type="str">consume</type>
      <event __type="str">KFC.game.s.standard</event>
      <player_ref __type="str">/coin/player1/ref_slotid</player_ref>
      <credit_ref __type="str">/coin/event</credit_ref>
    </kfc_game_s_standard>
    <kfc_game_s_standard_plus>
      <type __type="str">consume</type>
      <event __type="str">KFC.game.s.standard_plus</event>
      <player_ref __type="str">/coin/player1/ref_slotid</player_ref>
      <credit_ref __type="str">/coin/event</credit_ref>
    </kfc_game_s_standard_plus>
    <kfc_game_s_blaster>
      <type __type="str">consume</type>
      <event __type="str">KFC.game.s.blaster</event>
      <player_ref __type="str">/coin/player1/ref_slotid</player_ref>
      <credit_ref __type="str">/coin/event</credit_ref>
    </kfc_game_s_blaster>
    ```

    Thanks for 22vv0

## 游戏无法启动

### `exception raised: EXCEPTION_ACCESS_VIOLATION`

!!! info ""

    - 请检查音频设置是否正确，[见此](../setup.md#_6)
    - 请检查游戏文件是否完整，是否损坏

## 我只能玩NORMAL，FRIEND，SKILL ANYLIZE

!!! info ""

    - 请检查你没有开启FREE PLAY
    - 请检查氧无开启了PASELI
    - 新号需要完整打一把才能解锁

## 玩不了PREMIUM TIME

!!! info ""

    同上

## 掉帧/卡顿/帧数异常不稳定

!!! info ""

    请重启电脑，并关闭后台CPU占用高的应用，如果你启用了性能监控软件如MSI Afterburner，RTSS，游戏加加等涉及到屏幕内覆盖的软件也请关闭

    如果依旧有问题请查看[性能优化](../optimize.md)部分检查你的设置，帧数异常的同学尤其要查看关于[重置电源选项](../optimize.md#_4)的部分，说不定就解决了

## Patch导入失败

!!! info ""

    众所周知，只要你身处中国大陆部分地区并且不使用科学上网，因为连接不上Github，Patch大概率会导入不了，抛错`WinHttpSendRequest failed:12030` 

    解决也很简单，换成CDN地址就可以了，但是可能会有资源同步延迟，不过一般也不会经常更新Patch，不是很影响

    将 `https://sp2x.two-torial.xyz` 换成：`https://cdn.jsdelivr.net/gh/two-torial/sp2xpatcher/patches/`

## Mod/omnimix无法加载

!!! info ""

    **Spice2x** 2024-12-06的一次更新，内置的LayeredFS被移除了，现在均需要自行安装，请从[mon/ifs_layeredfs](https://github.com/mon/ifs_layeredfs/releases)下载，或者用我预下载的

    [ifs_layeredfs_3.6.zip](../../public/ifs_layeredfs_3.6.zip)

    打开压缩包，将`data_mods`放到游戏目录，跟`data`同级

    ![image.png](../../img/troubleshoot/image%203.png)

    然后将压缩包64bit文件夹里的`ifs_hook.dll` 放到`modules`文件夹里，打开spicecfg，在Options-Inject Dll Hooks，填入`ifs_hook.dll`即可完成前置安装

## 氧无回线冗杂

!!! info ""

    大概率氧无插件或者omnimix/Mods的问题，请检查：

    - 氧无插件的版本是否匹配你当前的游戏版本

    - 清除 `data_mods` 缓存并重启游戏重建
        - 依旧请重装/删除omnimix，以及所有歌曲类的Mod