set bg=dark
syntax on
colo desert
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set hlsearch
set cursorline
set number

"set spell spelllang=en_us
match ErrorMsg '\s\+$'

" Vagrant markings
augroup vagrant
    au!
    au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END

" Ansible markings
augroup ansible
    au!
    au BufRead,BufNewFile inventory set filetype=yaml
augroup END

autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
