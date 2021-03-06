"""""""""" VIMRC """"""""""""
" Version 0.1 - 16.01.15
"""""""""""""""""""""""""""""

execute pathogen#infect()
set nocompatible                            " use vim and not vi settings

" Vim directories {{{
    if has("win32")
        let vimdir = $HOME.'\vimfiles'
        behave mswin
        set path+=D:\Dropbox\Private\Project\**
    else
        let vimdir = $HOME.'/.vim'
        set path+=/Users/dri/Code/Dropbox/Private/Project/**
    endif
    set autochdir
" }}}

" UI Config {{{
    set number                                  " show line numbers
    set numberwidth=5                           " number column width
    set showcmd                                 " show command in bottom bar
    set cursorline                              " highlight current line
    "set cursorcolumn                            " highilight current column
    set lazyredraw                              " redraw only when we need to
    set showmatch                               " highlight matching [{()}]
    set ruler                                   " show the cursor position all the time
    set laststatus=2                            " always display the status line
    set textwidth=80                            " set width of main file
    "set nowrap                                  " dont wrap lines on load
    set wrap
    "set fo-=t                                   " No auto-wrap when typing
    set linebreak                               " wrap lines at convenient points
    set colorcolumn=+1                          " show width column
    set noshowmode                              " dont show INSERT notification
" }}}

" Colors and Fonts {{{
    colorscheme badwolf                         " colortheme
    let g:badwolf_tabline = 2
    let g:badwolf_html_link_underline = 1
    let g:badwolf_css_props_highlight = 1
    let g:badwolf_darkgutter = 1
    if has("win32")
        set guifont=Courier\ New:h11
        set guioptions=eg                       " turn off scrollbar and other gui
    else
        set guifont=Monaco:h11
    endif
    set encoding=utf-8
    syntax enable                               " enable syntax processing
    set background=dark                         " tel theme background is bark
    set t_Co=256
" }}}

" Spaces and Tabs {{{
    set tabstop=4                               " number of visual spaces per TAB
    set softtabstop=4                           " number of spaces in tab when editing
    set shiftwidth=4                            " the number of spaces to use when indenting
    set shiftround                              " use multiple of shiftwidth when identing
    set expandtab                               " tabs are spaces
    set list listchars=tab:>>,trail:.,nbsp:.    " display extra whitespace
    set backspace=indent,eol,start              " delete through anything
" }}}

" Searching {{{
    set incsearch                               " search as chars are entered
    set hlsearch                                " highlight matches
    set ignorecase                              " case insensitive searches
    set smartcase                               " unless searching for specific
    " turn off search highlight
    nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
    set foldenable                              " enable folding
    set foldlevelstart=10                       " open most folds by default
    set foldnestmax=10                          " 10 nested fold max
    " space open/closes folds
    nnoremap <space> za
    vnoremap <space> za
    "set foldmethod=indent                       " fold based on ident level (:help foldmethod)
    " open all folds
    nnoremap <leader>f zR
    " close all folds
    nnoremap <leader>c zM
" }}}

" Leader shortcuts {{{
    let mapleader=","                           " leader is comma
    " edit vimrc and load vimrc bindings
    nnoremap <leader>ev :e $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC<CR>
    " save session
    nnoremap <leader>s :mksession<CR>
" }}}

" Movements {{{
    set scrolljump=5                            " Jump 5 lines when running out of the screen
    set scrolloff=3                             " Indicate jump out of the screen when 3 lines before end of the screen
    set sidescrolloff=10                        " Same on the sides
    set virtualedit=block                       " allow cursor to move where there is no text in visual block mode
    " Wrapped lines goes down/up to next row, rather than next line in file.
    noremap j gj
    noremap k gk
" }}}

" Windows and Tabs {{{
    map <C-up> <ESC><ESC>:tabnew<CR>
    map <C-left> <ESC><ESC>:tabprev<CR>
    map <C-right> <ESC><ESC>:tabnext<CR>
    map <C-down> <ESC><ESC>:tabclose<CR>

    "map <C-j> <C-W>j<C-W>_
    "map <C-k> <C-W>k<C-W>_
    "set wmh=0 so=999 winheight=999
    "map <C-h> <C-W>h
    "map <C-j> <C-W>j
    "map <C-k> <C-W>k
    "map <C-l> <C-W>l
    "noremap <A-l> gt
    "noremap <A-h> gT
    "noremap <A-j> gt
    "noremap <A-k> gT
    "set tabstop=4

" }}}

" Wildmenu Settings {{{
    set wildmenu                                " visual autocomplete for command menu
    set wildmode=list:longest                   " make wildmenu behave like bash
    set wildignore+=.hg,.git,.svn                   " Version control
    set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg  " binary images
    set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
    set wildignore+=*.spl,*.sw?,.DS_Store           " more files
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe     " ignore a type of files in wild menu
    set wildignore+=*.swp,*.bak,*.pyc,*.class       " ignore a few more things
" }}}

" Backups {{{
    set noswapfile                              " self expl
    set nobackup                                " keep backup file
    set history=1000                            " keep 100 history
    set autowrite                               " Automatically save before commands like :next and :make
    set undolevels=1000                         " undo a 1000 time
" }}}

" Visual Mode {{{
    " Move visual block
    vnoremap J :m '>+1<CR>gv=gv
    vnoremap K :m '<-2<CR>gv=gv
    vnoremap L <Esc>`<<C-v>`>odp`<<C-v>`>lol
    vnoremap H <Esc>`<<C-v>`>odhP`<<C-v>`>hoh

    " Indent blocks
    vnoremap > <gv
    vnoremap < >gv

    " Move lines up or down
    nnoremap <C-j> :m .+1<CR>==
    nnoremap <C-k> :m .-2<CR>==
    inoremap <C-j> <Esc>:m .+1<CR>==gi
    inoremap <C-k> <Esc>:m .-2<CR>==gi
    vnoremap <C-j> :m '>+1<CR>gv=gv
    vnoremap <C-k> :m '<-2<CR>gv=gv
" }}}

" Other {{{
    set modelines=1
    set hidden                                  " allow use of empty buffer
    set visualbell                              " use a visual alrt instead of sound
    set t_vb=                                   " vim will not flash or beep on error
    set noerrorbells                            " stop ringing on errors
    set title
    set pastetoggle=<leader>p                   " <leader>p enables paste mode
    set notimeout ttimeout ttimeoutlen=10       " set time out on keycodes but not mapping
    set tm=500
    set autoread                                " reload files changed outside vim
    filetype indent on                          " load filetype specific indent files
    filetype plugin on
    runtime macros/matchit.vim
"}}}

" Aliases {{{
" Clean trailing whitespace
    nnoremap <leader>ww mz:%s/\s\+$//<cr>:let @/=''<cr>`z

    " Better Completion
    set complete=.,w,b,u,t
    set completeopt=longest,menuone,preview

    " upper/lower word
    nmap <leader>u mQviwU`Q
    nmap <leader>l mQviwu`Q
    " upper/lower first char of word
    nmap <leader>U mQgewvU`Q
    nmap <leader>L mQgewvu`Q
    " underline the current line with '='
    nmap <leader>ul :t.<CR>Vr=

    " highlight last inserted text
    nnoremap gV `[v`]
" }}}

" Airline Plugin {{{
    let g:airline#extensions#tabline#enabled = 1
    "let g:airline_powerline_fonts = 1
    let g:airline_theme="dark"
    "let g:airline_left_sep = ''
    "let g:airline_left_alt_sep = ''
    "let g:airline_right_sep = ''
    "let g:airline_right_alt_sep = ''
" }}}

" CtrlP plugin (fuzzy file searcher) {{{
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_match_window = 'bottom,order:ttb'
    let g:ctrlp_switch_buffer = 0
    let g:ctrlp_working_path_mode = 'ra'
    if has("win32")
        let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
    else
        let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
    endif
    let g:ctrlp_custom_ignore =  '\v\.(exe|dll)$'
" }}}

" Autogroups {{{
    augroup configgroup
        autocmd!
        autocmd VimEnter * highlight clear SignColumn
        autocmd VimEnter * wincmd p
        autocmd FileType java setlocal noexpandtab
        autocmd FileType java setlocal list
        autocmd FileType java setlocal listchars=tab:+\ ,eol:-
        autocmd FileType java setlocal formatprg=par\ -w80\ -T4
        autocmd FileType php setlocal expandtab
        autocmd FileType php setlocal tabstop=2
        autocmd FileType php setlocal shiftwidth=2
        autocmd FileType php setlocal softtabstop=2
        autocmd FileType php setlocal list
        autocmd FileType php setlocal listchars=tab:+\ ,eol:-
        autocmd FileType php setlocal formatprg=par\ -w80\ -T4
        autocmd FileType php set omnifunc=phpcomplete#CompletePHP
        autocmd FileType ruby setlocal tabstop=2
        autocmd FileType ruby setlocal shiftwidth=2
        autocmd FileType ruby setlocal softtabstop=2
        autocmd FileType ruby setlocal commentstring=#\ %s
        autocmd FileType python setlocal commentstring=#\ %s
        autocmd BufEnter *.cls setlocal filetype=java
        autocmd BufEnter *.zsh-theme setlocal filetype=zsh
        autocmd BufEnter Makefile setlocal noexpandtab
        autocmd BufEnter *.sh setlocal tabstop=2
        autocmd BufEnter *.sh setlocal shiftwidth=2
        autocmd BufEnter *.sh setlocal softtabstop=2
        " When editing a file, always jump to the last known cursor position.
        " Don't do it for commit messages, when the position is invalid, or when
        " inside an event handler (happens when dropping a file on gvim).
        autocmd BufReadPost *
                    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal g`\"" |
                    \ endif
        " automatically strip trailing whitespace when a file is saved
        autocmd BufWritePre * :%s/\s\+$//e
    augroup END

    augroup myvimrc
        au!
        au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC
    augroup END

    if has("win32")
        " Resize splits when the window is resized
        au VimResized * :wincmd =                  " for mswindows
        au GUIEnter * simalt ~x
    else
    endif

    " Put at the very end of your .vimrc file.

    function! PhpSyntaxOverride()
        hi! def link phpDocTags  phpDefine
        hi! def link phpDocParam phpType
    endfunction

    augroup phpSyntaxOverride
        autocmd!
        autocmd FileType php call PhpSyntaxOverride()
    augroup END

" }}}

" vim:foldmethod=marker:foldlevel=0
