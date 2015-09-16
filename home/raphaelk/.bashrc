# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias pbcopy='xclip -selection clipboard'
alias cppath='pwd | pbcopy'

alias build="mvn clean install -Dmaven.test.skip=true"
alias buildt="mvn clean install"

alias buildj="mvn clean install -f pomj.xml -Dmaven.test.skip=true"
alias buildtj="mvn clean install -f pomj.xml"

gen-private() { puttygen "$1" -O private-openssh -o id_rsa; }
gen-public()  { puttygen "$1" -O public-openssh -o id_rsa.pub; }

alias sona="ssh -i /home/raphaelk/.ssh/sona/id_rsa ec2-user@sona.cit"
alias nirvana="ssh -i /home/raphaelk/.ssh/nirvana/id_rsa root@nirvana.cit"
alias ramones="ssh -i /home/raphaelk/.ssh/ramones/id_rsa root@ramones.cit"

dsona() { scp -i /home/raphaelk/.ssh/sona/id_rsa ec2-user@sona.cit:"$1" ./; }
dnirvana() { scp -i /home/raphaelk/.ssh/nirvana/id_rsa root@nirvana.cit:"$1" ./; }
dramones() { scp -i /home/raphaelk/.ssh/ramones/id_rsa root@ramones.cit:"$1" ./; }

alias dev="sqlplus64 npc_dev_ad/gpa1@CITDEVINSTANCE"
alias tst="sqlplus64 ac_admin/gpa1@CITDEVINSTANCE"
alias hlgcit="sqlplus64 ac_admin/gpa1@AIMARA"
alias prdcit="sqlplus64 npc_prd_ad/gpa1@CITDEVINSTANCE"
alias hlg="sqlplus64 fernando_ciandt/npcadp72@ADHLG"
