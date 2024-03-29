" keymap_etc.vim - Key mappings, functions, autocommands, etc.

" ======================================================================
" General
" ======================================================================

" <,> is the leader character
let mapleader = ","

" setup Yank Stack before all keymaps
call yankstack#setup()

" It's not like :W is bound to anything anyway.
command! W :w

" Page up/Page down: Space/Ctrl-Space
" nnoremap <Space> <C-d>
" nnoremap <C-@> <C-u>

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
nmap Y y$

" Close HTML tag (ctrl-/)
imap <silent> <C-_> </<C-X><C-O>

" auto-indent entire file
nmap <leader>i gg=G<C-o><C-o>

" Toggle paste mode
"set pastetoggle=<F12>

" Code folding options
nmap <silent> <F1> :set foldenable<CR>\|:set foldlevel=0<CR>
nmap <silent> <F2> :set foldenable<CR>\|:set foldlevel=1<CR>
nmap <silent> <F3> :set foldenable<CR>\|:set foldlevel=2<CR>
nmap <silent> <F4> :set foldenable<CR>\|:set foldlevel=3<CR>
nmap <silent> <F5> :set foldenable<CR>\|:set foldlevel=4<CR>
nmap <silent> <F6> :set foldenable<CR>\|:set foldlevel=5<CR>
nmap <silent> <F7> :set foldenable<CR>\|:set foldlevel=6<CR>
nmap <silent> <F8> :set foldenable<CR>\|:set foldlevel=7<CR>
nmap <silent> <F9> :set foldenable<CR>\|:set foldlevel=8<CR>
" 'fold tag'?
"nnoremap <leader>zt Vatzfu

" 'toggle fold' as an easier keymap
nnoremap zo za
vnoremap zo za

" Edit config files
nmap <leader>ev :tabnew<CR>\|:NERDTree ~/.vimfiles<CR>
nmap <leader>es :tabnew<CR>\|:NERDTree ~/.vimfiles/vim/bundle/ultisnips-snippets/snippets<CR>
nmap <leader>ed :tabnew<CR>\|:NERDTree ~/.dotfiles<CR>
nmap <leader>ez :tabnew<CR>\|:NERDTree ~/.zprezto<CR>
nmap <leader>eg :tabnew<CR>\|:e ~/.gitconfig<cr>
nmap <leader>et :tabnew<CR>\|:e ~/.tmux.conf<cr>

" View Rails source
command! Rsource :tabnew | NERDTree ~/code/src/rails

" Strip trailing whitespace
command! StripTrailingWhiteSpace :call <SID>StripTrailingWhitespaces()<CR>


" ======================================================================
" Tab / Buffer / Window Navigation
" ======================================================================

" New tab
command! T :tabnew

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
nmap <silent> <leader>z :ZoomWin<CR>

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
" Ack and Ag
" =============
" Ack ignores are stored in ~/.ackrc
nmap <leader>f :Ag!<space>
nmap <leader>F :Ag!<CR>
nmap <leader>a :FzfAg!<space>
nmap <leader>A :FzfAg! <C-R><C-W><CR>

" =============
" FZF/CommandT/CtrlP
" =============
nmap <silent> <leader>t :FzfFiles<CR>
nmap <silent> <leader>b :FzfBuffers<CR>
nmap <silent> <leader>B :BufOnly<CR>
" FZF mappings that work in Rails and Node.js projects:
"   Idea from: https://github.com/skwp/dotfiles/blob/master/vim/settings/ctrlp.vim
"   mnemonic 'jump to [something]'
"   mnemonic 'ag/find/grep in [something]'
"
" 'models' dir e.g. app/models app/mixin/models src/models
nmap <leader>jm :<c-u>call fzf#vim#files('', {'options': ['--query', "'/models/ "], 'source': 'fd --type f --exclude test --exclude public' })<cr>
command! -bang -nargs=* AgToFzfModels call fzf#vim#ag(<q-args>, '--file-search-regex models --ignore test --ignore public', <bang>0)
nmap <leader>am :AgToFzfModels<space>
" 'views' dir e.g. app/views src/views
nmap <leader>jv :<c-u>call fzf#vim#files('', {'options': ['--query', "'/views/ "], 'source': 'fd --type f --exclude test --exclude public' })<cr>
command! -bang -nargs=* AgToFzfViews call fzf#vim#ag(<q-args>, '--file-search-regex views --ignore test --ignore public', <bang>0)
nmap <leader>av :AgToFzfViews<space>
" 'controllers' dir e.g. app/controllers app/mixin/controllers src/controllers
nmap <leader>jc :<c-u>call fzf#vim#files('', {'options': ['--query', "'/controllers/ "], 'source': 'fd --type f --exclude test --exclude public' })<cr>
command! -bang -nargs=* AgToFzfControllers call fzf#vim#ag(<q-args>, '--file-search-regex controllers --ignore test --ignore public', <bang>0)
nmap <leader>ac :AgToFzfControllers<space>
" 'lib' dir e.g. lib src/lib
nmap <leader>jl :<c-u>call fzf#vim#files('', {'options': ['--query', "^lib \\| ^src/lib "], 'source': 'fd --type f --exclude test --exclude public' })<cr>
command! -bang -nargs=* AgToFzfLib call fzf#vim#ag(<q-args>, '--file-search-regex lib --ignore test --ignore public', <bang>0)
nmap <leader>al :AgToFzfLib<space>
" db/
nmap <leader>jd :<c-u>call fzf#vim#files('', {'source': 'fd --type f --search-path db'})<cr>
command! -bang -nargs=* AgToFzfDb call fzf#vim#ag_raw(<q-args> . ' db/', <bang>0)
nmap <leader>ad :AgToFzfDb<space>
" tests/
nmap <leader>jt :<c-u>call fzf#vim#files('', {'source': 'fd --type f --search-path test --exclude fixtures --exclude cassettes'})<cr>
command! -bang -nargs=* AgToFzfTest call fzf#vim#ag_raw(<q-args> . ' test/', <bang>0)
nmap <leader>at :AgToFzfTest<space>
" specs/
nmap <leader>js :<c-u>call fzf#vim#files('', {'source': 'fd --type f --search-path specs --exclude fixtures --exclude cassettes'})<cr>
command! -bang -nargs=* AgToFzfSpec call fzf#vim#ag_raw(<q-args> . ' spec/', <bang>0)
nmap <leader>as :AgToFzfSpec<space>
" config/
nmap <leader>jC :<c-u>call fzf#vim#files('', {'source': 'fd --type f --search-path config'})<cr>
command! -bang -nargs=* AgToFzfConfig call fzf#vim#ag_raw(<q-args> . ' config/', <bang>0)
nmap <leader>aC :AgToFzfConfig<space>
" nmap <leader>ja :CommandT app/assets<CR>
" nmap <leader>jh :CommandT app/helpers<CR>
" nmap <leader>jF :CommandT test/fixtures<CR>
" nmap <leader>jf :CommandT features<CR>
" nmap <leader>jp :CommandT public<CR>
" nmap <leader>js :CommandT spec<CR>
" nmap <leader>jF :CommandT spec/factories<CR>
" nmap <leader>jV :CommandT vendor<CR>
"Cmd-(m)ethod - jump to a method (tag in current file)
nmap <leader>m :FzfBTags<CR>
"Ctrl-(M)ethod - jump to a method (tag within a generated central tags file)
nmap <leader>M :FzfTags<CR>


" ======================================================================
" Other Plugins
" ======================================================================

" =============
" Dash
" =============
nmap <silent> <leader>k <Plug>DashSearch

" =============
" Fugitive/Gitv
" =============
command! -range Dg <line1>,<line2>diffget | diffupdate
command! -range Dp <line1>,<line2>diffput | diffupdate
xmap <leader>dg :diffget<CR>\|:diffupdate<CR>
xmap <leader>dp :diffput<CR>\|:diffupdate<CR>
nmap <leader>gb :Git blame<CR>
nmap <leader>gh :GBrowse<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gd :Gvdiffsplit<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gs :Git<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gv :Gitv! --all<CR> " File mode
vmap <leader>gv :Gitv! --all<CR> " File mode
nmap <leader>gV :Gitv --all<CR>  " Browser mode

" =============
" Gundo
" =============
nmap <leader>u :GundoToggle<CR>

" =============
" NERDTree
" =============
nmap <silent> <leader>d :NERDTreeToggle<CR>
nmap <silent> <leader>D :NERDTreeFind<CR>
nmap <leader>e :NERDTree<space>

" Taken from: https://github.com/sjl/dotfiles/blob/master/vim/vimrc
" Open a Quickfix window for the last search.
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
" Ack for the last search.
nnoremap <silent> <leader>/ :execute "Ack! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>

" =============
" ri.vim
" =============
" nnoremap <silent> <leader>k :call ri#OpenSearchPrompt(1)<CR> " vertical split
" nnoremap <silent> <leader>K :call ri#OpenSearchPrompt(0)<CR> " horizontal split
" nnoremap <silent> <leader>K :call ri#LookupNameUnderCursor()<cr>

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
" let g:surround_113 = "#{\r}"   " v
" let g:surround_35  = "#{\r}"   " #
" Select text in an ERb file with visual mode and then press ysaw- or ysaw=
" Or yss- to do entire line.
" let g:surround_45 = "<% \r %>"    " -
" let g:surround_61 = "<%= \r %>"   " =

" <leader># Surround a word with #{ruby interpolation}
" map <leader>s# ysiw#
" vmap <leader>s# c#{<C-R>"}<ESC>
" <leader>" Surround a word with "quotes"
" map <leader>s" ysiw"
" vmap <leader>s" c"<C-R>""<ESC>
" <leader>' Surround a word with 'single quotes'
" map <leader>s' ysiw'
" vmap <leader>s' c'<C-R>"'<ESC>
" <leader>` Surround a word with markdown ``
" map <leader>s` ysiw`
" vmap <leader>s` c`<C-R>"`<ESC>
" " <leader>) or <leader>( Surround a word with (parens)
" The difference is in whether a space is put in
" map <leader>s) ysiw(
" map <leader>s( ysiw)
" vmap <leader>s) c( <C-R>" )<ESC>
" vmap <leader>s( c(<C-R>")<ESC>
" <leader>[ Surround a word with [brackets]
" map <leader>s[ ysiw]
" map <leader>s] ysiw[
" vmap <leader>s] c[ <C-R>" ]<ESC>
" vmap <leader>s[ c[<C-R>"]<ESC>
" <leader>{ Surround a word with {braces}
" map <leader>s{ ysiw}
" map <leader>s} ysiw{
" vmap <leader>s} c{ <C-R>" }<ESC>
" vmap <leader>s{ c{<C-R>"}<ESC>
" <leader>| Surround a word with |braces|
" map <leader>s<bar> ysiw<bar>
" map <leader>s<bar> ysiw<bar>
" vmap <leader>s<bar> c<bar> <C-R>" <bar><ESC>
" vmap <leader>s<bar> c<bar><C-R>"<bar><ESC>

" =============
" Turbux/Vimux
" =============
" Run tests
nmap <silent> <leader>r <Plug>SendTestToTmux
nmap <silent> <leader>R <Plug>SendFocusedTestToTmux
nmap <silent> <Leader>RR :VimuxRunLastCommand<CR>

" Send selection to tmux (good for REPL)
vmap <silent> <leader>r "vy :call <SID>VimuxSlime()<CR>

" =============
" YankStank
" =============
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste


" ======================================================================
" Functions
" ======================================================================

" Strip trailing whitespace
" Taken from: http://vimcasts.org/episodes/tidying-whitespace/
function! s:StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Set up Markdown Preview keymap
function! s:SetupMarkdownPreview()
  command! Markdown silent !macdown "%:p"
  nmap <silent> <leader>p :Markdown<CR>\|:redraw!<CR>
endfunction

" If the parameter is a directory, cd into it
function! s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif

  if directory
    NERDTree
    wincmd p
    bd
    wincmd p
  endif

  if explicitDirectory
    wincmd p
  endif
endfunction

function! s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction

" Tabular custom patterns
function! s:CustomTabularPatterns()
  if exists('g:tabular_loaded')
    AddTabularPattern! comma /,/l0c1
    AddTabularPattern! symbol /:/l0
    AddTabularPattern! hashrocket /=>
    AddTabularPattern! equalsign /=
    AddTabularPattern! colon /:
  endif
endfunction

function! s:VimuxSlime()
  call VimuxOpenRunner()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
endfunction

" ======================================================================
" Autocmds
" ======================================================================

if has("autocmd")
  augroup samFileTypeSet
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  augroup END

  augroup samFileTypeOptions
    au!

    " Indention - rb, html, css, javascript use default
    "   (ai) turn on auto-indenting (great for programers)
    "   (et) expand tabs to spaces (use :retab to redo entire file)
    "   (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)
    "   (sts) makes spaces feel like tabs (like deleting)
    "   (ts) width (in spaces) that a <tab> is displayed as
    "   (tw) number of columns before an automatic line break is inserted (see formatoptions)
    "   (lbr) wrap long lines at a space instead of in the middle of a word
    au FileType htmldjango setlocal ai et sw=2 sts=2 ts=2 tw=200 " stop fucking up my HTML
    au FileType make       setlocal ai et sw=8 sts=8 ts=8
    au FileType markdown   setlocal ai et sw=2 sts=2 ts=2 tw=72
    au FileType python     setlocal ai et sw=4 sts=4 ts=4
    au FileType text,txt   setlocal ai et sw=2 sts=2 ts=2 tw=72 wrap nolist lbr

    " Folding
    au FileType html       setlocal foldmethod=syntax
    au FileType javascript setlocal foldmethod=syntax
    au FileType ruby       setlocal foldmethod=manual

    " Compiler
    au FileType ruby       compiler ruby

    " Omnicompletion
    au FileType css  silent! setlocal omnifunc=csscomplete#CompleteCSS
    " see :h ft-ruby-omni
    au FileType ruby set omnifunc=rubycomplete#Complete
    au FileType ruby let g:rubycomplete_buffer_loading=1
    au FileType ruby let g:rubycomplete_classes_in_global=1
    au FileType ruby let g:rubycomplete_rails = 1

    " Keymaps
    au FileType help     nnoremap <silent><buffer> q :q<CR>
    au FileType markdown call <SID>SetupMarkdownPreview()
  augroup END

  augroup samFileTypeMisc
    " cd if opening a directory
    au VimEnter * call <SID>CdIfDirectory(expand("<amatch>"))
    " add custom Tabular patterns
    au VimEnter * call <SID>CustomTabularPatterns()
    " Update NERDTree
    au FocusGained * silent! call <SID>UpdateNERDTree()
    " Reload Fugitive
    au FocusGained * if !has('win32') | silent! call fugitive#reload_status() | endif
    " Stop folding by indent in help buffer
    au BufReadPre * if (&buftype == 'help') | setlocal foldmethod=manual | endif
    " Remember last location in file
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal g'\"" | endif
    " Strip trailing whitespace on save
    au BufWritePre *.rb,*.py,*.html,*.php,*.erb,*.css,*.scss,*.js,*.coffee,*.feature :call <SID>StripTrailingWhitespaces()
    " Quit when only Quickfix is the remaining buffer
    au BufEnter * if (winnr('$') == 1 && &buftype == 'quickfix') | quit | endif
    " Quit when only NERDTreee is the remaining buffer
    au BufEnter * if (winnr('$') == 1 && exists('b:NERDTreeType') && b:NERDTreeType == 'primary') | quit | endif
  augroup END
endif
