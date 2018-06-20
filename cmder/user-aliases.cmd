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
