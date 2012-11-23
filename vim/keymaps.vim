" ======================================================================
" General
" ======================================================================

" <,> is the leader character
let mapleader = ","

" It's not like :W is bound to anything anyway.
command! W :w

" Page up/Page down: Space/Ctrl-Space
nnoremap <Space> <C-d>
nnoremap <C-@> <C-u>

" Make j and k move by screen line instead of file line
nnoremap j gj
nnoremap k gk

" Use tab to navigate parans, etc.
nnoremap <tab> %
vnoremap <tab> %

" Maintain selection after indent
vmap > >gv
vmap < <gv

" Make Y consistent with C and D: Yank from the cursor to the end of the line
" Customized for YankRing
function! YRRunAfterMaps()
  nnoremap Y :<C-U>YRYankCount 'y$'<CR>
endfunction

" Toggle paste mode
set pastetoggle=<F1>

" Code folding options
nmap <silent> <D-0> :set foldlevel=99<CR>
nmap <silent> <D-1> :set foldlevel=0<CR>
nmap <silent> <D-2> :set foldlevel=1<CR>
nmap <silent> <D-3> :set foldlevel=2<CR>
nmap <silent> <D-4> :set foldlevel=3<CR>
nmap <silent> <D-5> :set foldlevel=4<CR>
nmap <silent> <D-6> :set foldlevel=5<CR>
nmap <silent> <D-7> :set foldlevel=6<CR>
nmap <silent> <D-8> :set foldlevel=7<CR>
nmap <silent> <D-9> :set foldlevel=8<CR>
" 'fold tag'
nnoremap <leader>zt Vatzfu
nnoremap zo za
vnoremap zo za

" Edit/source vimrc file
nmap <leader>ev :tabnew<CR>\|:NERDTree ~/.vimfiles<CR>

" View Rails source
command! Rsource :tabnew | NERDTree ~/code/src/rails


" ======================================================================
" Tab / Buffer / Window Navigation
" ======================================================================

" New tab
nmap <silent> <C-t> :tabnew<CR>

" Window navigation
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
" Split window vertically
nmap <leader>v <C-w>v<C-w>l
" Split window horizontally
nmap <leader>h <C-w>s<C-w>j
" Close all but current
nmap <leader>o <C-w>o
" Cycle through all windows
nmap <leader>w <C-w>w
" Exchange with other window
nmap <leader>x <C-w>x
" Adjust viewports to the same size
nmap <leader>= <C-w>=
" Toggle ZoomWin
nmap <silent> <leader>Z :ZoomWin<CR>

" Buffer navigation
nmap <left>  :bp<CR>
nmap <right> :bn<CR>

" Quickfix navigation
noremap <up>    :cprev<CR>zvzz
nnoremap <down> :cnext<CR>zvzz

" Toggle Quickfix window
nmap <silent> <leader>q :QFix<CR>


" ======================================================================
" Search
" ======================================================================

" Turn off hightlight search
nnoremap <silent> <CR> :noh<CR>

" Seach prompt
nnoremap / /\v
vnoremap / /\v

" Search and replace prompt
nnoremap <leader>s :%s/\v/g<left><left>
vnoremap <leader>s :s/\v/g<left><left>
nnoremap <leader>S :%s/\<<C-r><C-w>\>//g<Left><Left>


" ======================================================================
" Searh Plugins
" ======================================================================

" =============
" Ack
" =============
" Ack ignores are stored in ~/.ackrc
nmap <leader>f :Ack!<space>
nmap <leader>F :Ack!<CR>

" =============
" CommandT/CtrlP
" =============
nmap <silent> <leader>t :CommandT<CR>
nmap <silent> <leader>T :CommandTFlush<CR>\|:CommandT<CR>
nmap <silent> <leader>b :CtrlPBuffer<CR>
nmap <silent> <leader>B :BufOnly<CR>
" Rails Command-T Mappings - taken from:
"   https://github.com/skwp/dotfiles/blob/master/vim/plugin/settings/ctrlp.vim
"   Open Command-T starting from a particular path, making it much
"   more likely to find the correct thing first. mnemonic 'jump to [something]'
nmap <leader>ja :CommandT app/assets<CR>
nmap <leader>jc :CommandT app/controllers<CR>
nmap <leader>jh :CommandT app/helpers<CR>
nmap <leader>jm :CommandT app/models<CR>
nmap <leader>jv :CommandT app/views<CR>
nmap <leader>jF :CommandT test/fixtures<CR>
nmap <leader>jf :CommandT features<CR>
nmap <leader>jl :CommandT lib<CR>
nmap <leader>jp :CommandT public<CR>
nmap <leader>js :CommandT spec<CR>
"nmap <leader>jF :CommandT spec/factories<CR>
nmap <leader>jt :CommandT test<CR>
nmap <leader>jd :CommandT db<CR>
nmap <leader>jC :CommandT config<CR>
nmap <leader>jV :CommandT vendor<CR>
"Cmd-(m)ethod - jump to a method (tag in current file)
nmap <leader>m :CtrlPBufTag<CR>
"Ctrl-(M)ethod - jump to a method (tag in all files)
nmap <leader>M :CtrlPBufTagAll<CR>


" ======================================================================
" Other Plugins
" ======================================================================

" =============
" Fugitive/Gitv
" =============
command! -range Dg <line1>,<line2>diffget | diffupdate
command! -range Dp <line1>,<line2>diffput | diffupdate
xmap <leader>dg :diffget<CR>\|:diffupdate<CR>
xmap <leader>dp :diffput<CR>\|:diffupdate<CR>
nmap <leader>gb :Gblame w<CR>
nmap <leader>gh :Gbrowse<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gv :Gitv --all<CR>
nmap <leader>gV :Gitv! --all<CR>
vmap <leader>gV :Gitv! --all<CR>

" =============
" Gundo
" =============
nmap <leader>u :GundoToggle<CR>

" =============
" NarrowRegion
" =============
xmap <leader>n <Plug>NrrwrgnDo

" =============
" NERDTree
" =============
nmap <silent> <leader>d :NERDTreeToggle<CR>
nmap <silent> <leader>D :NERDTreeFind<CR>
nmap <leader>e :NERDTree<space>

" Taken from https://github.com/sjl/dotfiles/blob/master/vim/vimrc
" Open a Quickfix window for the last search.
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
" Ack for the last search.
nnoremap <silent> <leader>/ :execute "Ack! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>

" =============
" ri.vim
" =============
nnoremap <silent> <leader>k :call ri#OpenSearchPrompt(1)<CR> " vertical split
nnoremap <silent> <leader>K :call ri#OpenSearchPrompt(0)<CR> " horizontal split
"nnoremap <silent> <leader>K :call ri#LookupNameUnderCursor()<cr>

" =============
" Scratch
" =============
nmap <silent> <leader><tab> :Scratch<CR>

" =============
" Surround.vim
" =============
" Use v or # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #
" Select text in an ERb file with visual mode and then press ysaw- or ysaw=
" Or yss- to do entire line.
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =

" <leader># Surround a word with #{ruby interpolation}
map <leader>s# ysiw#
vmap <leader>s# c#{<C-R>"}<ESC>
" <leader>" Surround a word with "quotes"
map <leader>s" ysiw"
vmap <leader>s" c"<C-R>""<ESC>
" <leader>' Surround a word with 'single quotes'
map <leader>s' ysiw'
vmap <leader>s' c'<C-R>"'<ESC>
" <leader>` Surround a word with markdown ``
map <leader>s` ysiw`
vmap <leader>s` c`<C-R>"`<ESC>
" <leader>) or <leader>( Surround a word with (parens)
" The difference is in whether a space is put in
map <leader>s) ysiw(
map <leader>s( ysiw)
vmap <leader>s) c( <C-R>" )<ESC>
vmap <leader>s( c(<C-R>")<ESC>
" <leader>[ Surround a word with [brackets]
map <leader>s[ ysiw]
map <leader>s] ysiw[
vmap <leader>s] c[ <C-R>" ]<ESC>
vmap <leader>s[ c[<C-R>"]<ESC>
" <leader>{ Surround a word with {braces}
map <leader>s{ ysiw}
map <leader>s} ysiw{
vmap <leader>s} c{ <C-R>" }<ESC>
vmap <leader>s{ c{<C-R>"}<ESC>

" =============
" Tagbar
" =============
nmap <silent> <leader>c :TagbarToggle<CR>

" =============
" Tabular
" =============
nmap <leader>a  :Tabularize /
vmap <leader>a  :Tabularize /
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:<CR>
vmap <leader>a: :Tabularize /:<CR>

" =============
" Turbux/tSlime
" =============
nmap <leader>r <Plug>SendTestToTmux
nmap <leader>R <Plug>SendFocusedTestToTmux
vmap <C-c><C-c> <Plug>SendSelectionToTmux
