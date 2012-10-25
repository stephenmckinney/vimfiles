" ======================================================================
" Plugin Configuration
" ======================================================================
" CtrlP
let g:ctrlp_map = ''
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 15
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = {
\ 'dir':  'bin$\|db/migrate$\|log$\|public/cache$\|public/stylesheets$\|public/system$\|script$\|tmp$\|vendor$'
\ }

" Gitv
let g:Gitv_DoNotMapCtrlKey = 1

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" Matchit
runtime macros/matchit.vim " Enable matchit.vim for Ruby blocks and HTML navigation

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o', '\~$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeHijackNetrw = 0
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='s'

" Powerline
let g:Powerline_symbols='fancy'
let g:Powerline_theme='skwp'
let g:Powerline_colorscheme='skwp16'

" Ruby Doc
let g:ruby_doc_command='open'

" Ruby Refactoring
let g:ruby_refactoring_map_keys = 0

" ShowMarks
let g:showmarks_textlower="*\t"
let g:showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY"

" Solarized
let g:solarized_contrast="normal"  "default value is normal
let g:solarized_diffmode="high"    "default value is normal
let g:solarized_visibility="high"  "default value is normal
let g:solarized_hitrail=1          "default value is 0

" Snipmate
let g:snips_author='Steve McKinney'
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['eruby'] = 'eruby,eruby-rails,html'
let g:snipMate.scope_aliases['htmldjango'] = 'htmldjango,html'
let g:snipMate.scope_aliases['php'] = 'php,html'
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-factorygirl,ruby-rails,ruby-rspec,ruby-shoulda'

" Syntastic
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

" Tagbar
let g:tagbar_compact = 1

" Turbux
let g:no_turbux_mappings = 1
"let g:turbux_command_prefix = 'bundle exec'
