
" Uncomment to force the home directory to the Windows home 
" directory, e.g. C:\User\username
"let $HOME=$USERPROFILE

set shm=atI " Disable the distracting intro screen.
set lazyredraw " Don't redraw the screen during macros.
set ttyfast " Improves redrawing for "newer" computers 
            " (where "newer" is defined as "not ancient").
set nobk nowb noswf " Disable backup (this may not be the best option for most 
                    " people, but I personally use version control and found 
                    " all the swap files annoying.
set timeoutlen=500 " Lower timeout for custom mappings.
set titlestring=%f title " Display the filename in the terminal window.
set ruf=%l:%c ruler " Display current column/line in bottom right 
                    " (all I need, really).

"set wim=full wildmenu " Enable command-line tab completion (REALLY useful).
"set completeopt=menu " Don't show extra info on completions (not so useful).
set wig+=*.o,*.obj,*.pyc,*.DS_Store,*.db " Hide irrelevent matches when 
                                         " completing stuff.
set mouse=a

set nofoldenable " Disable folding.

ru macros/matchit.vim " Enable extended % matching (for bouncing between 
                      " if/endif, <tag>/</tag>, etc.).

set statusline=[%{&fo}]%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

set nocompatible

set modelines=0

set complete-=i
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmode=list:longest
set vb t_vb=
set cursorline
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

set lines=50 
set columns=80

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set fo-=t
set colorcolumn=85

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack

filetype on
filetype plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => OmniCppCompleteb 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set Ctrl+j in insert mode, like VS.Net
imap <C-j> <C-X><C-O>
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview

" j/k for up and down in autocomplete menu
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" OLD OPTIONS	
" OmniCompletionOptions
"set completeopt=menu,menuone
"let OmniCpp_NamespaceSearch=2
"let OmniCpp_ShowPrototypeInAbbr=1
" let OmniCpp_MayCompleteScope=1

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/vimfiles/tags/cpp
set tags+=~/vimfiles/tags/qt4
set tags+=~/vimfiles/tags/viewe
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F8> :cd %:p:h <Bar> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving between windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do :help cope if you are unsure what cope is. It's super useful!
map <leader>cc :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

map <leader>h :bp<cr>
map <leader>l :bn<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FSwitch plugin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <Leader>of :FSHere<cr>
nmap <silent> <Leader>ol :FSRight<cr>
nmap <silent> <Leader>oL :FSSplitRight<cr>
nmap <silent> <Leader>oh :FSLeft<cr>
nmap <silent> <Leader>oH :FSSplitLeft<cr>
nmap <silent> <Leader>ok :FSAbove<cr>
nmap <silent> <Leader>oK :FSSplitAbove<cr>
nmap <silent> <Leader>oj :FSBelow<cr>
nmap <silent> <Leader>oJ :FSSplitBelow<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo plugin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F5> :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Doxygen Toolkit plugin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <Leader>dx :Dox<cr>

let g:DoxygenToolkit_briefTag_pre="\\brief "
let g:DoxygenToolkit_paramTag_pre="\\param "
let g:DoxygenToolkit_returnTag="\\return "
let g:DoxygenToolkit_authorName="Steven Kowal"
let g:DoxygenToolkit_licenseTag="My own license" 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimwiki plugin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:vimwiki_list = [{'path': '~/Dropbox/wiki', 'template_path': '~/vimwiki_templates', 'template_default': 'msword2k10', 'template_ext': '.html'},{'path': '~/mediawiki/', 'syntax': 'media'}]

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
                        \ 'syntax': 'markdown', 'ext': '.md'}]

autocmd FileType Vimwiki setlocal spell
"Allow spell checking only when you leave insert mode
"autocmd InsertEnter * setlocal nospell
"autocmd InsertLeave * setlocal spell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airline plugin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
