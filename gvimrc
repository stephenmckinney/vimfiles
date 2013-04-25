" gvimrc - GUI Vim

" MacVim should go fullscreen
if has("gui_macvim")
  set guifont=Source\ Code\ Pro\ for\ Powerline:h18,Source\ Code\ Pro:h18,Menlo:h18
  " Fullscreen
  "set fuoptions=maxhorz,maxvert
  "au GUIEnter * set fullscreen
  " Remove toolbar
  "set guioptions-=T
endif


" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
