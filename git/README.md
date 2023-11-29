## Git configurations

My new config demands that i set up a new identity per repo if i want to use a different email.

### Installation

```bash
$ ln -s /path/to/dotfiles/git/gitconfig ~/.gitconfig

$ ln -s /path/to/dotfiles/git/gitignore ~/.gitignore
```
### Notes

Adding work-specific config, like another email address is done by 
conditionally including another git config if we are working inside 
the path `~/Documents/Inteleon/`. 

The include is done in my master gitconfig and more info can be found
[here](https://git-scm.com/docs/git-config#_conditional_includes)

```bash
$ ln -s /path/to/dotfiles/git/gitconfiginteleon ~/.gitconfiginteleon
$ ln -s /path/to/dotfiles/git/gitconfigeasypark ~/.gitconfigeasypark
$ ln -s /path/to/dotfiles/git/gitconfigevimeria ~/.gitconfigevimeria
$ ln -s /path/to/dotfiles/git/gitconfigbalancegolf ~/.gitconfigbalancegolf
$ ln -s /path/to/dotfiles/git/gitconfigsendify ~/.gitconfigsendify
```
