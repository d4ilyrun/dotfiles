" ============================================================================
" File:        nerdtree_open.vim
" Description: Open file in nerdtree with system default app
" Maintainer:  Linfee
" ============================================================================
if exists("g:loaded_nerdtree_open")
  finish
endif

let g:loaded_nerdtree_open = 1

let g:nerdtree_open#menu_shortcut = get(g:, 'nerdtree_open#menu_shortcut ', '<c-o>')

let s:haskdeinit = system("ps -e") =~ 'kdeinit'
let s:hasdarwin = system("uname -s") =~ 'Darwin'

" call NERDTreeAddMenuItem({
"       \ 'text': '(O)pen current node with system default app',
"       \ 'shortcut': 'O',
"       \ 'callback': 'NERDTreeOpen'
"       \ })
call NERDTreeAddKeyMap({
      \ 'key': g:nerdtree_open#menu_shortcut,
      \ 'callback': 'NERDTreeOpen',
      \ 'quickhelpText': 'Open with system default app',
      \ 'scope': 'Node' })

function! NERDTreeOpen(...)
  let l:oldssl=&shellslash
  set noshellslash
  let treenode = g:NERDTreeFileNode.GetSelected()
  let path = treenode.path.str()

  if has("gui_running")
    let args = shellescape(path,1)." &"
  else
    let args = shellescape(path,1)." > /dev/null"
  end

  if has("unix") && executable("gnome-open") && !s:haskdeinit
    exe "silent !gnome-open ".args
    let ret= v:shell_error
  elseif has("unix") && executable("kde-open") && s:haskdeinit
    exe "silent !kde-open ".args
    let ret= v:shell_error
  elseif has("unix") && executable("open") && s:hasdarwin
    exe "silent !open ".args
    let ret= v:shell_error
  elseif has("win32") || has("win64")
    exe "silent !start explorer ".shellescape(path,1)
  end
  let &shellslash=l:oldssl
  redraw!
endfunction
