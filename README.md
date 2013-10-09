# Vim configuration #

## OSX Setup ##

## Linux Setup ##

### General Setup ###
* $ git clone https://github/sjkowal/dotvim.git ~/.vim
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

### Font Setup ###
Set up fonts by adding a link to $HOME/.fonts
* $ cd ~/.fonts
* $ ln -s ~/.vim/fonts vimfonts


## Windows Setup ##
* Gundo - requires Python 2.4+ (http://www.python.org/)
* Ack - requires Perl (http://strawberryperl.com) then run the command "cpan
  App::Ack" from the command line.

