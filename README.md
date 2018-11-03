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

## Notes
git-prompt and git-complete are pulled in form
[contrib/completion](https://github.com/git/git/tree/master/contrib/completion)
of gits repo.

## Sub dotfiles

* [Vim](vim/README.md)
* GnuPG
    ```bash
    $ ln -s /path/to/dotfiles/gnupg/gpg.conf ~/.gnupg/gpg.conf
    ```
