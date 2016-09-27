# Vim configuration #

### General Setup ###
* $ git clone https://github.com/sjkowal/dotvim.git ~/.vim
* $ cd ~/.vim
* $ git submodule init
* $ git submodule update
* $ ln -s ~/.vim/vimrc ~/.vimrc
* $ ln -s ~/.vim/gvimrc ~/.gvimrc

Next Load vim and re-build the help...
:Helptags

### Adding a new bundle ###
* $ cd ~/.vim
* $ mkdir ~/.vim/bundle
* $ git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
* $ git add .
* $ git commit -m "Install Fugitive.vim bundle as a submodule."

### Pulling latest for all submodules ###
Since each submodules is tied to a specific commit, it can be nice to get them
all up to date with thier master master. 

* $ git submodule foreach git pull origin master

After all the submodules have pulled from master add the changes and commit
them.

* $ git add .
* $ git commit -m "updated all submodules to current master"
* $ git push

At this time I'm avoiding making any changes to the submodules so there's no
modifications made to the submodules files.  

### Font Setup ###
Set up fonts for Linux by adding a link to $HOME/.fonts
* $ cd ~/.fonts
* $ ln -s ~/.vim/fonts vimfonts

Set up fonts for Mac by copying font files into /Library/Fonts/
* $ cp ~/.vim/fonts/powerline-fonts/Meslo/Meslo*.otf /Library/Fonts

Set up fonts for Winsows by double clicking on the following: 
* C:\Vim\vimfiles\fonts\powerline-fonts\InconsolataDz\Inconsolata-dz for Powerline.otf
Then choose install

## Windows Setup ##
* Gundo - requires Python 2.4+ (http://www.python.org/)
* Ack - requires Perl (http://strawberryperl.com) then run the command "cpan
  App::Ack" from the command line...or perl -MCPAN -e "CPAN::Shell->force(qw(install App::Ack));"
* AG - requires The Silver Searcher ( http://blog.kowalczyk.info/software/the-silver-searcher-for-windows.html) to be installed and is an alternative to
  Ack.  Modify the vimrc file so that it's used by the ack plugin , let g:ackprg = 'ag --vimgrep'
