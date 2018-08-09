filetype plugin indent on
syntax on

set tabstop=2
set shiftwidth=2
set expandtab

" Show line numbers
set number

" Show (partial) command in the last line of the screen.
set showcmd     "отображение выполняемой команды

" When set to 'dark', Vim will try to use colors that look good on a dark
" background.  When set to 'light', Vim will try to use colors that look good
" on a light background.  Any other value is illegal.
"set background=dark

" When there is a previous search pattern, highlight all its matches.
" See also: 'incsearch' and :match.
set hlsearch

" Ignore case in search patterns. Also see 'smartcase'.
set ignorecase

" This option changes how text is displayed.  It doesn't change the text
" in the buffer, see 'textwidth' for that. When on, lines longer than the
" width of the window will wrap and displaying continues on the next line.
set wrap

" If on Vim will wrap long lines at a character in 'breakat' rather than
" at the last character that fits on the screen.
set linebreak

" Make a backup before overwriting a file.  Leave it around after the file
" has been successfully written.
set nobackup

" List of directory names for the swap file, separated with commas.
set directory=~/.vim/swap

" Background theme
set background=dark

"There is a special register for storing this selection, it is the "*
"register.  Nothing is put in here unless the information about what text is
"selected is about to change (e.g. with a left mouse click somewhere), or when
"another application wants to paste the selected text.  Then the text is put
"in the "* register.  For example, to cut a line and make it the current
"selection/put it on the clipboard:
"        "*dd
" When the 'unnamed' string is included in the 'clipboard' option, the unnamed
" register is the same as the "* register.  Thus you can yank to and paste the
" selection without prepending "* to commands.
"set clipboard=unnamed

" Keymap
"set keymap=russian-jcukenwin
"imap ^[z ^^

"setlocal spell spelllang=ru,en
nmap <F7> :set spell spelllang=ru,en<CR>
imap <F7> <Esc>:set spell spelllang=ru,en<CR>i
nmap <F8> :set nospell!<CR>
imap <F8> <Esc>:set nospell!<CR>i

" Set default keymap to english
set iminsert=0

" Set default keymap for search and cmd to english
set imsearch=0
