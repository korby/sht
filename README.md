sht
===

Ssh shortcuts
The easy way to launch ssh access without wondering username, ip adress...
Features :
- remote autocompletion
- rsync copying between local and remote
- rsync copying with remote sudo

# install
```
git clone git@github.com:korby/sht.git
dpkg -i sht.deb
```

# usage
options : -h | -c | -l | -i | -d

```
sht [shortcut to launch]
sht -c prodserver2 user@prod.domain -> will add the shortcut prodserver2
sht prodserver2 -> will connect you to user@prod.domain
sht prodserver2:/root/private_file /tmp/private_file -> will copy remote private_file on local /tmp/private_file asking you if you want to use remote sudo
```
before you have to fill/create you shortcuts file here: /Users/andre/sht/sht With this syntax for each line : shortcutsName:sshuser@sshhost
```
sht -c [name] [user@host] : add the shortcut in the shortcuts' file
sht -d [term to search] : display shortcuts matching with term
sht -i [shortcut to launch] : launch the shortcut and ssh copy id
sht -h : print help
```
