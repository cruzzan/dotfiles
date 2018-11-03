My bash config
==============

Largely based on Lars Kapperts Medium [article](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789) about dotfiles.

## Install
```
$ ./install.sh
    Flags:
	-h/--help:
	    Display some help (Not so helpful right now)
	--no-bak
	    Disable backup of existing config files (`.bashrc`, `.bash_profile`, `.inputrc`)
```

The install will first back up existing config files, then copy the ones
from this project in. They in turn source the rest of the config, and
set up whatever else i want.

