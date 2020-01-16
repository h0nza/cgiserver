#!/usr/bin/make -f

defaeult : git

#SELinux -Z ? 
install : cgiserver
	install -m 755 cgiserver $(HOME)/bin

include Makefile

git :
	git remote -v
	git remote show upstream || :

#upstream :
upstream :
	git remote show upstream || git remote add $@ git://github.com/klange/cgiserver.git

#remote update je jako fetch --all? --prune?
update : ; git remote update
