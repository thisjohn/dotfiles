export PATH="~/bin:$PATH"

# version control prompt: https://github.com/djl/vcprompt
#export PS1="\h:\W \u\$ " # default
#export PS1="\u@\h:\w \$(vcprompt -f '[%b%m%u%a] ')\$ " # white
export PS1="\u@\h:\w \[\e[0;37m\]\$(vcprompt -f '[%b%m%u%a] ')\[\e[m\]\$ "

export VISUAL="vim"
export EDITOR="vim"

alias df='df -h'
alias grep='egrep -n --color=always --exclude-dir=.svn --exclude={tags,cscope.out,*.swp,*.pyc}'
alias ls='ls -GF'
alias ll='ls -lh'
alias less='less -r'
alias vi='vim -p'
alias vim='vim -p'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
