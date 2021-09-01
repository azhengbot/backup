# > Backup Dotfiles
backup_dotfiles(){
    echo "backup dotfiles"
    cp ~/.zshrc ./
    cp ~/.vimrc ./
    echo "复制成功"
}

backup_to_github(){
    msg='Backup on: '`date`
    echo $msg

    git add .
    git commit -m "$msg"
    git push --set-upstream origin main
    git push
    echo "上传成功"
}

backup_dotfiles
backup_to_github