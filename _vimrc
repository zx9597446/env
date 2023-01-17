autocmd FileType go nmap <leader>t  <Plug>(go-test)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <Leader>i <Plug>(go-info)

autocmd VimEnter * map <c-n> :cnext<CR>
autocmd VimEnter * map  <c-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

let g:go_fmt_command = "goimports"
let g:go_metalinter_enabled = ['vet', 'errcheck', 'varcheck', 'staticcheck']
let g:go_list_type = "quickfix"
"let g:go_auto_type_info = 1
"let g:go_auto_sameids = 1


let mapleader="\\""

set autowrite
set wrap

"set columns=150
"set lines=300
map <F4> :NERDTreeToggle<CR>

let NERDTreeQuitOnOpen=0
set guifont=Courier\ New:h12

source $VIMRUNTIME/mswin.vim

" colorscheme solarized8_light
