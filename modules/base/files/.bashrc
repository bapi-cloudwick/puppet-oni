# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cprod='cd /etc/puppetlabs/code/environments/production/'
alias dux='su - duxbury'
alias msite='vim /etc/puppetlabs/code/environments/production/manifests/site.pp'
alias bmod='cd /etc/puppetlabs/code/environments/production/modules/base/'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

