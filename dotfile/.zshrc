# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

export PYENV_ROOR="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
# if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
export LDFLAGS="-L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/bzip2/include"
source ~/.zinit/bin/zinit.zsh

# p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 快速目录跳转
zinit ice lucid wait='1'
zinit light skywind3000/z.lua

# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

# 自动建议
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# 补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions

# 加载 OMZ 框架及部分插件
zinit snippet OMZ::lib/key-bindings.zsh
# zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
zinit snippet OMZ::plugins/pyenv/pyenv.plugin.zsh
# zinit ice svn
# zinit snippet OMZ::plugins/extract
zinit ice lucid wait='1'
zinit snippet OMZ::plugins/git/git.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 加载 pure 主题
# zinit ice pick"async.zsh" src"pure.zsh"
# zinit light sindresorhus/pure
# zinit snippet OMZ::lib/git.zsh
# zinit snippet OMZ::themes/ys.zsh-theme


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/admin/.sdkman"
[[ -s "/Users/admin/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/admin/.sdkman/bin/sdkman-init.sh"


export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export M2_HOME=$HOME/.m2/apache-maven-3.6.0
export PATH=$PATH:$M2_HOME/bin

# hadoop
# export JAVA_HOME=/Users/admin/Library/Java/JavaVirtualMachines/sapmachine-11.0.12/Contents/Home
export CLASSPAHT=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export HADOOP_HOME=/usr/local/Cellar/hadoop/3.3.1/libexec
export HADOOP_COMMON_HOME=$HADOOP_HOME
export PATH=$JAVA_HOME/bin:$PATH:$HADOOP_HOME/bin:/usr/local/Cellar/scala/bin
export PATH="/usr/local/opt/bzip2/bin:$PATH"
