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
sht [options] [local_path] shortcut [local_path|ssh_connection_chain]

Use shortcut to make remote ssh connections.

Examples :

sht -c my-server me@domain.tld
Add a shorcut named 'my-server'. Then you can connect to me@domain.tld just typing sht my-server.

sht -i my-server
Copy your id_rsa.pub to remote shortcut 'my-server'.

sht /path/to/file my-server:/path/to/file
Copy local file /path/to/file to remote shortcut 'my-server' /path/to/file.

sht my-server:/path/to/file /path/to/file
Copy remote shortcut 'my-server' file /path/to/file to local path /path/to/file.

sht -s my-server:/path/to/file /path/to/file
The same than above but using sudo on the remote server.

Options :
  -c : Create a new shortcut
  -d : Display the ssh_connection_chain set for a shortcut
  -h : Display help
  -i : Copy identity file to remote shortcut
  -l : List all shortcuts informations
  -s : Use sudo on remote server for copying
  -t : Allow remote server terminal allocation

Advanced usage :
When you add a new shortcut you can give complex ssh chain, examples :
sht -c my-shortcut-name -i /path/to/a/key/rsa  -p 8222 user@xx.xxx.xx.xxx
sht -c my-shortcut-name -J user@xx.xxx.xx.xxx -i /path/to/a/key/rsa  -p 8222 user@xx.xxx.xx.xxx
```
