" dracula theme
let g:dracula_italic = 0 " TODO: Figure out why italics aren't working
colorscheme dracula

" Linting
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['prettier'],
      \   'javascriptreact': ['prettier'],
      \   'typescript': ['prettier'],
      \   'typescriptreact': ['prettier'],
      \   'css': ['prettier'],
      \   'scss': ['prettier'],
      \   'ruby': ['standardrb'],
      \}

let g:ale_linters = {
      \   'ruby': ['standardrb'],
      \   'typescript': ['tsserver'],
      \   'typescriptreact': ['tsserver'],
      \}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_open_list = 0

" Tests
let test#strategy = "vimterminal"
nnoremap <leader>f :TestFile<CR>
nnoremap <leader>t :TestNearest<CR>
nnoremap <leader>A :TestSuite<CR>
nnoremap <leader>l :TestLast<CR>
