set go-=T "no toolbar
set go-=m "no menubar 
set encoding=utf-8

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 12
  elseif has("gui_photon")
    set guifont=Droid\ Sans\ Mono\ Regular:s12
  elseif has("gui_kde")
    set guifont=Droid\ Sans\ Mono\ Regular/12/-1/5/50/0/0/0/1/0
  elseif has("gui_win32")
    set guifont=Consolas:h12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h16
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Droid\ Sans\ Mono\ Regular:h12:cDEFAULT
  endif
endif


"set encoding=utf-8
"set guifont=Consolas:h11
"set guifont=droid_sans_mono_for_powerline:h10

colorscheme vibrantink
"colorscheme badwolf 
"colorscheme vibrantink 

au FocusLost * :wa
syntax enable
