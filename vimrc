execute pathogen#infect()
call pathogen#helptags()

set number
set ruler
syntax on

" Indentation configuration

set smartindent
set expandtab
set tabstop=2
set shiftwidth=2

nmap <S-Tab> <<
nmap <Tab> >>
imap <S-Tab> <Esc><<i

" firefox auto refresh on save
" needs MozRepl and netcat

autocmd BufWriteCmd *.html.erb,*.css,*.scss,*.html,*.css,*.gtpl :call Refresh_firefox()
function! Refresh_firefox()
  if &modified
    write
    silent !echo  'vimYo = content.window.pageYOffset;
                  \ vimXo = content.window.pageXOffset;
                  \ BrowserReload();
                  \ content.window.scrollTo(vimXo,vimYo);
                  \ repl.quit();'  |
                  \ nc -w 1 localhost 4242 2>&1 > /dev/null
  endif
endfunction

