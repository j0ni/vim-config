" Vim color file
" URL:		http://www.c7obs.net/~david/stuff/darkdot.vim
" 
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="darkdot"

hi Normal	cterm=none			gui=none	guibg=#002255	guifg=#d8dddd
hi Cursor	cterm=none					guibg=#44ff44	guifg=#000000
hi link CursorIM Cursor
hi Directory				ctermfg=cyan				guifg=#44ffff
hi DiffAdd	ctermbg=blue		ctermfg=yellow		guibg=#080888	guifg=#ffff00
hi DiffDelete	ctermbg=black		ctermfg=darkgray	guibg=#080808	guifg=#444444
hi DiffChange	ctermbg=black					guibg=#080808	guifg=#ffffff
hi DiffText	ctermbg=black		ctermfg=darkred		guibg=#080808	guifg=#bb0000
hi ErrorMsg	ctermbg=darkred		ctermfg=white		guibg=#880000	guifg=#ffffff
hi Folded	ctermbg=black		ctermfg=darkblue	guibg=black	guifg=#000088
hi link FoldColumn Folded
hi IncSearch	ctermbg=black		ctermfg=gray		guibg=#000000	guifg=#bbcccc
hi LineNr				ctermfg=blue		guibg=#404040	guifg=#ffff00
hi ModeMsg				ctermfg=white				guifg=#ffffff
hi MoreMsg				ctermfg=green				guifg=#44ff44
hi NonText				ctermfg=blue				guifg=#4444ff
hi Question				ctermfg=yellow				guifg=#ffff00
hi Search	ctermbg=NONE		ctermfg=green		guibg=NONE	guifg=green
hi SpecialKey				ctermfg=blue				guifg=#4444ff
hi VertSplit     guifg=#202020    guibg=#404040    gui=NONE    ctermfg=darkgray    ctermbg=darkgray    cterm=NONE 
hi StatusLine    guifg=#dddddd    guibg=#404040    gui=NONE    ctermfg=white       ctermbg=darkgray    cterm=NONE 
hi StatusLineNC  guifg=#777777    guibg=#404040    gui=NONE    ctermfg=blue        ctermbg=darkgray    cterm=NONE
" hi StatusLine	cterm=none ctermbg=darkcyan	ctermfg=white	gui=none	guibg=#00aaaa	guifg=#ffffff
" hi StatusLineNC	cterm=none ctermbg=gray		ctermfg=black	gui=none	guibg=#bbbbbb	guifg=#000000
" hi link VertSplit StatusLineNC			
hi Title	ctermfg=white				guifg=#ffffff 
hi Visual	cterm=none ctermbg=gray		ctermfg=black	gui=none	guibg=#bbbbbb	guifg=#000000
hi link VisualNOS Visual
hi WarningMsg				ctermfg=yellow				guifg=#ffff00
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment	ctermfg=blue			guifg=#4444ff
hi Constant	ctermfg=darkcyan		guifg=#00aaaa
hi Identifier 	ctermfg=white			guifg=#ffffff
hi Statement 	ctermfg=cyan			guifg=#44ffff
hi PreProc	ctermfg=darkcyan		guifg=#00aaaa
hi Type		ctermfg=white			guifg=#ffffff
hi Special	ctermfg=blue	cterm=bold	guifg=#6666ff	gui=bold
hi Underlined	ctermfg=blue			guifg=#4444ff
hi Ignore	ctermfg=darkgray		guifg=#444444
hi Error	ctermbg=black			ctermfg=darkred		guibg=#000000	guifg=#bb0000
hi Todo		ctermbg=darkred			ctermfg=yellow		guibg=#aa0006	guifg=#fff300

hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Conditional	Statement
hi link Label		Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Repeat		Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link Delimiter	Special
hi link SpecialComment	Special
hi link Debug		Special
hi link FoldColumn	Folded

if version >= 700
  hi SpellBad     guisp=#FF0000
  hi SpellCap     guisp=#0000FF
  hi SpellRare    guisp=#ff4046
  hi SpellLocal   guisp=#000000                          ctermbg=0
  hi Pmenu        guifg=cyan guibg=#000000            ctermbg=0 ctermfg=6
  hi PmenuSel     guifg=white guibg=#000000 gui=bold   cterm=bold ctermfg=3
  hi PmenuSbar    guibg=#204d40                          ctermbg=6
  hi PmenuThumb   guifg=#38ff56                          ctermfg=3
  hi CursorColumn guibg=#096354
  hi CursorLine   guibg=#096354
  hi Tabline      guifg=bg      guibg=fg gui=NONE        cterm=reverse,bold ctermfg=NONE ctermbg=NONE
  hi TablineSel   guifg=#20012e guibg=#00a675 gui=bold
  hi TablineFill  guifg=#689C7C
  hi MatchParen   guifg=#38ff56 guibg=#0000ff gui=bold   ctermbg=4
endif

