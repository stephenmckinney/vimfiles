" plugin_config.vim - Plugin configuration

" Ack
let g:ackprg = 'ack --nogroup --nocolor --column --with-filename'

"Ag
let g:agprg  = 'ag --nogroup --nocolor --column --ignore tmp'

" Autotag
"let g:autotagTagsFile='tmp/tags'
"let g:autotagCtagsCmd='--tag-relative'

" Command-T
let g:CommandTMaxHeight=20
let g:CommandTMaxFiles=20000
let g:CommandTMaxCachedDirectories=0
let g:CommandTCancelMap='<ESC>'
let g:CommandTAcceptSelectionSplitMap='<C-h>' " <C-s> won't work in TERM

" CtrlP
let g:ctrlp_map = ''
let g:ctrlp_mruf_default_order = 1
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_max_height = 20
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_extensions = ['buffertag', 'tag']
" This should be unecessary since we HAVE to set |wildignore| options
" for Command-T (unfortunately). And these custom ignores are identical
" to our |wildignore| settings.
"let g:ctrlp_custom_ignore = {
"\ 'dir':  'bin$\|db/migrate$\|log$\|public/cache$\|public/stylesheets$\|public/system$\|script$\|tmp$\|vendor$'
"\ }

" Gist
let g:gist_post_private = 1

" Gitv
let g:Gitv_DoNotMapCtrlKey = 1

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" HTML seettings from javascript.vim
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Matchit
runtime macros/matchit.vim " Enable matchit.vim for Ruby blocks and HTML navigation

" NeoBundle
let g:neobundle#log_filename=expand('~/.vim/plugin_install.log')

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o', '\~$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeHijackNetrw = 0
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='s'
let NERDTreeWinSize=25

" Powerline
"let g:Powerline_symbols='fancy'
"let g:Powerline_theme='short'
"let g:Powerline_colorscheme='solarized16_dark'
"if has("gui_macvim")
  "let g:Powerline_colorscheme='solarized256_dark'
"end

" Ruby Doc
let g:ruby_doc_command='open'

" Ruby Refactoring
let g:ruby_refactoring_map_keys = 0

" ShowMarks
let g:showmarks_textlower=" "
let g:showmarks_textupper=" "
let g:showmarks_include = "ABCDEFGHIJKLMNOPQRSTUVWXYabcdefghijklmnopqrstuvwxyz"
let g:showmarks_hlline_lower=1
let g:showmarks_hlline_upper=1

" Solarized
if !has("gui_macvim")
  let g:solarized_termcolors=16
end
let g:solarized_contrast="normal"  "default value is normal
let g:solarized_diffmode="high"    "default value is normal
let g:solarized_visibility="high"  "default value is normal
let g:solarized_hitrail=1          "default value is 0
"hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
"hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
"hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

" Sparkup
let g:sparkupExecuteMapping='<c-y>'

" Supertab
"let g:SuperTabDefaultCompletionType = "context"

" UltiSnips
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetDirectories=['snippets']
let g:UltiSnipsListSnippets="<c-k>" " terminal doesn't understand <c-tab>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit='vertical'

" Syntastic
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

" Tagbar
let g:tagbar_compact = 1

" Turbux
let g:no_turbux_mappings = 1
let g:turbux_command_prefix = 'bundle exec'

" Vimux
let VimuxUseNearestPane = 1 " Vim is in pane 1, so always use pane 2

" YankStank
let g:yankstack_map_keys = 0
