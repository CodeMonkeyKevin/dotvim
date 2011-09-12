" Vim color scheme
"
" Name:         blackboard.vim
" Maintainer:   Ben Wyrosdick <ben.wyrosdick@gmail.com>
" Last Change:  20 August 2009
" License:      public domain
" Version:      1.4

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name = "blackboard"

" Colours in use
" --------------
" #FF5600 bright orange
" #FFDE00 yolk yellow
" #D8FA3C lemon yellow
" #61CE3C green
" #84A7C1 light blue
" #AEAEAE medium grey

if has("gui_running")
  "GUI Colors
  highlight Normal guifg=White   guibg=#0B1022
  highlight Cursor guifg=Black   guibg=Yellow
  highlight CursorLine guibg=#191E2F
  highlight LineNr guibg=#323232 guifg=#888888
  highlight Folded guifg=#1d2652 guibg=#070a15
  highlight Visual guibg=#283A76
  highlight WildMenu guifg=#000000 guibg=#ffff00

  " Helps colorize FuzzyFileFinder
  hi Pmenu                guibg=#999999 guifg=#000000
  hi PmenuSel             guibg=#333333 guifg=#CCCCCC

  "General Colors
  highlight Comment guifg=#AEAEAE
  highlight Constant guifg=#D8FA3C
  highlight Keyword guifg=#FFDE00
  highlight String guifg=#61CE3C guibg=#0d1d07
  highlight Type guifg=#84A7C1
  highlight Identifier guifg=#61CE3C gui=NONE
  highlight Function guifg=#FF5600 gui=NONE
  highlight clear Search
  highlight Search guibg=#1C3B79
  highlight PreProc guifg=#FF5600

  "Invisible character colors
  highlight NonText guifg=#4a4a59
  highlight SpecialKey guifg=#B1B1BE

  "HTML Colors
  highlight link htmlTag Type
  highlight link htmlEndTag htmlTag
  highlight link htmlTagName htmlTag

  "Ruby Colors
  highlight link rubyClass Keyword
  highlight link rubyDefine Keyword
  highlight link rubyConstant Type
  highlight link rubySymbol Constant
  highlight link rubyStringDelimiter rubyString
  highlight link rubyInclude Keyword
  highlight link rubyAttribute Keyword
  highlight link rubyInstanceVariable Normal

  "Rails Colors
  highlight link railsMethod Type

  "Sass colors
  highlight link sassMixin Keyword
  highlight link sassMixing Constant

  "Markdown colors
  highlight markdownCode guifg=#61CE3C guibg=#070a15
  highlight link markdownCodeBlock markdownCode

  "Git colors
  highlight gitcommitSelectedFile guifg=#61CE3C
  highlight gitcommitDiscardedFile guifg=#C23621
  highlight gitcommitWarning guifg=#C23621
  highlight gitcommitBranch guifg=#FFDE00
  highlight gitcommitHeader guifg=#84A7C1

  "Limp
  "hi BracketsBlock guibg=#222

end
