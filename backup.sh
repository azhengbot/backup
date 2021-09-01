# 全局变量，填入项目地址
# HEAD
DIR=$HOME/Desktop/dotfile
# export git=/usr/bin/git

# > Backup Dotfiles
backup_dotfiles(){
    echo "backup dotfile"
    cp ~/.zshrc ./
    cp ~/.vimrc ./
    echo "复制成功"
}

backup_to_github(){
    msg='Backup on: '`date`
    echo $msg

    git add $DIR
    git commit -m "$msg"
    git push --set-upstream origin main
    echo "上传成功"
}

backup_dotfiles
backup_to_github