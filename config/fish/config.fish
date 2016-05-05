alias ssh_cenil='ssh root@128.199.117.108'
alias ssh_geblek='ssh root@128.199.98.78'
alias ssh_ihik='ssh root@ihik.kulina.id'
alias ssh_nfs='ssh root@128.199.155.206'
alias ssh_tawon='ssh arseto@162.243.246.210'
alias ssh_tawon_root='ssh root@162.243.246.210'
alias ssh_uhui='ssh root@uhui.kulina.id'
alias ssh_uhuk='ssh root@128.199.82.132'
alias ssh_gembus='ssh root@128.199.121.182'
alias ssh_tiwul='ssh root@128.199.187.111'
alias ssh_lopis='ssh root@188.166.245.0'
alias ssh_nogosari='ssh root@128.199.251.62'
alias ssh_lemper='ssh root@128.199.140.114'
alias ssh_ebstag='ssh ec2-user@api.staging.kulina.id'

#GIT
alias glc="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gpr="git pull --rebase"
alias gpush="git push"
alias gstat="git status"
alias gch="git checkout"
alias gbr="git branch"

set PATH ~/.gem/ruby/2.2.0/bin ~/.local/bin ~/.gem/ruby/2.3.0/bin ~/.npm-packages/bin/ ~/.composer/vendor/bin/ ~/local/bin $PATH

set -x GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
rvm default
