# 全局变量
WD=`pwd`
# > 安装自动备份脚本到 contab
install_to_crontab() {
    script="bash $WD/backup.sh"
    # echo $script
    crontab -l > /tmp/crontab_conf
    if grep -q "no crontab" /tmp/crontab_conf ; then
        # manual
        echo "自动添加失败，请尝试手动添加: "
        # echo SHELL=$SHELL > crontab_conf
        # echo PATH=$PATH >> crontab_conf
        echo "5 16 * * * $script > /tmp/dotfile_Backup.log && osascript -e 'display notification \"$WD/backup\" with title \"dotfile备份成功, 已上传至 GitHub\" '" >> crontab_conf
        echo "运行 \$ crontab -e"

        echo "插入以下内容: "
        cat crontab_conf
        exit 1
    else
        # auto
        crontab -l > crontab_conf
        # echo SHELL=$SHELL >> crontab_conf
        # echo PATH=$PATH >> crontab_conf
        echo "40 9 * * * $script > /tmp/dotfile_Backup.log && osascript -e 'display notification \"$WD/backup\" with title \"dotfile备份成功, 已上传至 GitHub\" '" >> crontab_conf
        crontab crontab_conf && rm -f crontab_conf

        echo "🎉 自动化备份dotfile安装完成"
        echo "目前的 crontab 配置"
        crontab -l
        exit 0
    fi
}

install_to_crontab
