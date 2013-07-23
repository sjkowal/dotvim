Vim configuration
=================

## OSX Setup ##

## Linux Setup ##

$ git clone https://github/sjkowal/dotvim.git ~/.vim
$ cd ~/.vim
$ git submodule init
$ git submodule update
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/gvimrc ~/.gvimrc

### Fonts ###
Set up fonts by adding a link to $HOME/.fonts
* cd $HOME/.fonts
* ln -s $HOME/.vim/fonts vimfonts


## Windows Setup ##
* Gundo - requires Python 2.4+ (http://www.python.org/)
* Ack - requires Perl (http://strawberryperl.com) then run the command "cpan
  App::Ack" from the command line.

