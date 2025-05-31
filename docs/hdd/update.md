# 更新

!!! info ""

    更新包的格式应该如下

    `KFC-当前版本-to-更新版本`

    ![image.png](../img/update/update-zip.png)

## 如何更新

!!! info ""

    打开压缩包，将包内的文件夹覆盖游戏文件夹的同名文件夹

    ![image.png](../img/update/replace-file.png)

!!! tips "提示"

    有时可能不会如图，可能会多几个/少几个文件夹，但是通常来讲`data`，`modules`是肯定会有的

??? warning "懒人包更新必看！！！"

    如果你使用的懒人包，更新包覆盖有所不同，你需要在覆盖了以后将`modules`文件夹里的所有`.dll`挪到上一级菜单，如图，才能生效

    ![image.png](../img/update/lazypack-update.png)

## 更改版本号

!!! info ""

    覆盖文件以后，你需要打开`prop/ea3-config.xml`，更改版本号

    ```xml
    <soft>
        <model __type="str">KFC</model>
        <dest __type="str">J</dest>
        <spec __type="str">G</spec>
        <rev __type="str">A</rev>
        <ext __type="str">2025021200</ext> # 更改这一行为更新包名称末尾的更新版本号，日期最后的两位也要带上
    </soft>

    ```

## 重新应用Patch

!!! info ""

    更新以后需要重新应用补丁，具体详见[部署里的Patches](setup.md#patches)

## 重建缓存（打Mod用户必须！）

!!! info ""

    进入`data_mods`文件夹，删除`_cache`文件夹重建缓存，否则歌曲类的Mod将会和更新包冲突导致不显示新歌