sht
===

Ssh shortcuts
The easy way to launch ssh access without wondering username, ip adress...   

Features :
- connect to remote host
- copy id to remote user authorized_keys' file
- remote autocompletion
- rsync copying between local and remote
- rsync copying with remote sudo

# install
## Debian like systems
```
git clone git@github.com:korby/sht.git
dpkg -i sht.deb
```
## Macosx
Autocompletion is very useful, if this command doesn't exist :
```
complete
```
Then install bash completion :
```
brew install bash-completion
```
And now install sht :
```
git clone git@github.com:korby/sht.git
cp sht/debian_package/usr/bin/sht /usr/local/bin/
chmod +x /usr/local/bin/sht
cp sht/debian_package/etc/bash_completion.d/sht /usr/local/etc/bash_completion.d/sht
. /usr/local/etc/bash_completion.d/sht
```

# usage

```
sht [shortcut to launch]

# Will add the shortcut prodserver2
sht -c prodserver2 user@prod.domain

# Will connect you to user@prod.domain
sht prodserver2

# Will copy remote private_file on local /tmp/private_file asking you if you want to use remote sudo
sht prodserver2:/root/private_file /tmp/private_file
```

Options details: -h | -c | -l | -i | -d
```
sht -c [name] [user@host] : add the shortcut in the shortcuts' file
sht -d [term to search] : display shortcuts matching with term
sht -i [shortcut to launch] : launch the shortcut and ssh copy id
sht -h : print help
```
