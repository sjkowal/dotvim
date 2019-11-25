# Setting up MacVim command line

First, create a link to the command line tools located in the MacVim.app
bundle.

```
ln -s /Applications/MacVim.app/Contents/bin/ ~/bin/MacVim
```

Edit .profile to include ~/bin/MacVim in your path.

```
export PATH=$HOME/bin/MacVim:$PATH
```
