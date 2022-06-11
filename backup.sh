# 全局变量，填入项目地址
# HEAD
DIR=$HOME/Desktop/backup
export git=/usr/bin/git

# > Backup Dotfiles
backup_dotfiles(){
    echo "backup"
    cp ~/.zshrc $DIR/dotfile
    cp ~/.vimrc $DIR/dotfile
    echo "复制成功"
}

backup_to_github() {
    msg='Backup on: '`date`
    echo $msg

    git add $DIR 
    git commit -m "$msg" 
    PULL="$(git pull)"
    echo "${PULL}"
    PUSH="$(git push --set-upstream origin main)"
    echo "${PUSH}"
} 


# 主程序
cd $DIR # 这个很重要
backup_dotfiles
backup_to_github || display_error