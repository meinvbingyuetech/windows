;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
hosts=c: && vim \Windows\System32\drivers\etc\hosts
sscf=e: && cd \centos\sscf-work\www
dishen=e: && cd \centos\sscf-work\work
pu=git pu
l=git ll
st=git st
log=git log
br=git br
merge=git merge $*
ck=git ck $*
add=git add $*
com=git com $*
gg=git pull && git add . && git com -m $1 && git push && git st

;= gg2 dev-v1 测试 （gg2 当前分支 本次提交备注）
gg2=git pull && git add . && git com -m $2 && git push && git st && git ck slave && git ll && git merge $1 && git st && git pu && git ck $1 && git st

sssscf=ssh root@192.168.11.156
ssdishen=ssh root@127.0.0.1 -p2222
sstest=ssh -i "C:\Users\meinv\.ssh\id_rsa" developer@39.108.131.67
