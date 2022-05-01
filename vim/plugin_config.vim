" plugin_config.vim - Plugin configuration

"Ag
let g:ag_prg  = 'ag --vimgrep --smart-case'
let g:ag_highlight=1

" FZF
let g:fzf_command_prefix = 'Fzf'

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
" let g:html_indent_inctags = "html,body,head,tbody"
" let g:html_indent_script1 = "inc"
" let g:html_indent_style1 = "inc"

" JSX
let g:jsx_ext_required = 0

" Matchit
runtime macros/matchit.vim " Enable matchit.vim for Ruby blocks and HTML navigation

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o', '\~$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeHijackNetrw = 0
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='s'
let NERDTreeWinSize=25
let NERDTreeStatusline=-1

" Ruby Doc
"let g:ruby_doc_command='open'

" Ruby Refactoring
"let g:ruby_refactoring_map_keys = 0

" ShowMarks
let g:showmarks_textlower=" "
let g:showmarks_textupper=" "
let g:showmarks_include = "ABCDEFGHIJKLMNOPQRSTUVWXYabcdefghijklmnopqrstuvwxyz"
let g:showmarks_hlline_lower=1
let g:showmarks_hlline_upper=1

" Solarized + Lightline
if !has("gui_macvim")
  let g:solarized_termcolors=16
end
let g:solarized_contrast="normal"  "default value is normal
let g:solarized_diffmode="high"    "default value is normal
let g:solarized_visibility="high"  "default value is normal
let g:solarized_hitrail=1          "default value is 0
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \   'fileformat': 'LightlineFileformat',
  \   'fileencoding': 'LightlineFileencoding',
  \ },
  \ }

function! LightlineFilename()
  return winwidth(0) > 70 ? fnamemodify(expand("%"), ":~:.") : pathshorten(fnamemodify(expand("%"), ":~:."))
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? &fileencoding : ''
endfunction

" Supertab
"let g:SuperTabDefaultCompletionType = "context"

" UltiSnips
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetDirectories=['plugins/ultisnips', 'plugins/ultisnips-snippets']
let g:UltiSnipsListSnippets="<c-j>" " terminal doesn't understand <c-tab>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit='vertical'

" Syntastic
" When set to 1 always stick any detected errors into the location-list.
let g:syntastic_always_populate_loc_list = 1
" When set to 1 the error window will be automatically opened when errors are detected, and closed when none are detected.
let g:syntastic_auto_loc_list=1
" When set to 3 the cursor will jump to the first error detected, if any. If
" all issues detected are warnings, the cursor won't jump.
let g:syntastic_auto_jump=3
" Use eslint
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['mri'] ", 'rubocop']
" let g:syntastic_quiet_messages = finddir('app_sbn', '.;') == '' ? { "level" : [] } : { "level": "warnings" }
let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": [],
    \ "passive_filetypes": ["html"] }

" Turbux
let g:no_turbux_mappings = 1
let g:turbux_runner  = 'vimux'
" hack to fix broken 'run focused test' since https://github.com/jgdavey/vim-turbux/pull/36
let g:turbux_test_type = ''
"let g:turbux_command_prefix = 'bundle exec'
let g:turbux_command_test_unit = 'rails test'
let g:turbux_command_rspec = 'rspec --format documentation'
let g:turbux_command_javascript_test = 'NODE_ENV=test mocha --exit'

" YankStank
let g:yankstack_map_keys = 0
