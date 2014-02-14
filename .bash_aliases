
#SHORTCUTS COMMANDS
#emacs23
#alias em='TERM=xterm-256color emacs -nw'
#alias sudoem='sudo emacs -nw'
#emacs24
alias em='TERM=xterm-256color emacs -nw'
alias sudoem='sudo TERM=xterm-256color emacs -nw'


#SHORTCUTS
alias cdwww='cd /var/www/'

#system
alias netrestart='service networking restart'
alias apacherestart='apache2ctl restart'


#WEB
#alias phperror='tail -f /var/log/apache2/error.log

alias phperror='tail -f /var/log/apache2/error.log | perl -pe "s/\[[0-9a-zA-Z:\s]*\]/\e[0;33;40m$&\e[0m/g;s/\[error\]/\e[1;37;40m$&\e[0m/g;s/PHP Fatal error/\e[1;31;40m$&\e[0m/g;s/PHP Parse error/\e[1;35;40m$&\e[0m/g;s/PHP Warning/\e[1;33;40m$&\e[0m/g;s/in ([a-zA-Z0-9\/.]*) on line ([0-9])*/\e[4;33;40m$&\e[0m/g"'
alias phperrors=phperror


#functions:

alias s='find . -type f -print0 | xargs -0 -e grep -nH -e '
alias s2='/home/arnaud/emgrep.sh'
alias rmsvndirs='rm -rf `find . -type d -name .svn`' #supprimer recusrivement tout les dossiers .svn du repertoire courant

#files operations:
alias fileNoM="perl -pi -e 's/\r\n/\n/'"

#disk
alias diskspace='df -h'
alias filesize='du -sh'

#ASTUCES awk et boucles
#for i in 1 2 3; do echo $i; done;
#for i in $(ls); do echo $i; done;
#for i in $(ls -l | awk '{print $5}'); do echo $i; done;
#ps - aux | awk '{print $1,$5}'
#ps -aux | awk '{print $1,"\t\t"$2}'
#top | awk '$2 == "arnaud"{print}'
#Astuce regexp en perl:
#cat regexptest | perl -pe "s/^<option value=\"(\d+)\" >([a-zA-Z&\s\-;,\(\)]*)<\/option>/<option value=\"\2\"\>\2<\/option>/g;" >> new.tt
#general : cat fichier | perl -pe "s/mot a changer :(\w+)/mot changé : \1/g" >> fichier

#Cas pratiques
# Une idée pour retrouver tous les modifs svn apportées par dossiers
#for i in $(ls); do echo " "; echo $i; svn log $i; done;
#(ou) for i in $(ls); do echo " " >> logsvn.txt; echo "____________" >> logsvn.txt; echo $i >> logsvn.txt; svn log $i >> logsvn.txt; done;


#Postfix service stop/start
#sudo netstat -ltpn
#sudo /etc/init.d/postfix stop
#sudo mailq
#sudo postsuper -d ALL
#sudo mailq
#sudo /etc/init.d/postfix restart




