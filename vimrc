execute pathogen#infect()
:call pathogen#helptags()

:set number
:set ruler
syntax on
filetype plugin indent on

" Indentation configuration

:set expandtab
:set tabstop=2
:set shiftwidth=2

nmap <S-Tab> <<
nmap <Tab> >>
imap <S-Tab> <Esc><<i

