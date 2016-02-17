sht
===

Ssh shortcuts
The easy way to launch ssh access without wondering username, ip adress...

# install
```
git clone git@github.com:korby/sht.git
dpkg -i sht.deb
```

# usage
options : -h | -c | -l | -i

```
sht [shortcut to launch]
```
before you have to fill/create you shortcuts file here: /Users/andre/sht/sht With this syntax for each line : shortcutsName:sshuser@sshhost
```
sht -c [name] [user@host] : add the shortcut in the shortcuts' file
sht -i [shortcut to launch] : launch the shortcut and ssh copy id
sht -h : print help
```
