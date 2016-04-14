# ~/.bashrc

# add user's bin to PATH if it exists
[ -d ~/bin ] && export PATH="~/bin:${PATH}"

# version control prompt: https://github.com/djl/vcprompt
if [ -x "$(command -v vcprompt)" ]; then
    # vcprompt found
    #export PS1="\u@\h:\w \$(vcprompt -f '[%b%m%u%a] ')\$ "  # white
    export PS1="\u@\h:\w \[\e[0;37m\]\$(vcprompt -f '[%b%m%u%a] ')\[\e[m\]\$ "
fi

export VISUAL=vim
export EDITOR=vim


# aliases

# detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then  # GNU `ls`
	COLOR_FLAG="--color"
else  # BSD, OS X `ls`
	COLOR_FLAG="-G"
fi

alias df='df -h'
alias grep='egrep -n --color=always --exclude-dir=.svn --exclude={tags,cscope.out,*.swp,*.pyc}'
alias ls="ls -hF ${COLOR_FLAG}"
alias ll='ls -hl'
alias less='less -r'
alias vi='vim -p'
alias vim='vim -p'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'


# custom
[ -f ~/.bash_local ] && . ~/.bash_local
