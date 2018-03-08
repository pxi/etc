"http://hans.fugal.net/vim/colors/bw.vim.html
set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "nek"

hi Comment			cterm=bold			ctermbg=none	ctermfg=none
hi Constant			cterm=none			ctermbg=none	ctermfg=none
hi Error			cterm=bold			ctermbg=1		ctermfg=7
hi Identifier		cterm=none			ctermbg=none	ctermfg=none
hi Ignore			cterm=none			ctermbg=none	ctermfg=none
hi PreProc			cterm=none			ctermbg=none	ctermfg=none
hi Special			cterm=none			ctermbg=none	ctermfg=none
hi Statement		cterm=none			ctermbg=none	ctermfg=none
hi Todo				cterm=none			ctermbg=3		ctermfg=0
hi Type				cterm=none			ctermbg=none	ctermfg=none
hi Underlined		cterm=none			ctermbg=none	ctermfg=none

hi Cursor			cterm=none			ctermbg=none	ctermfg=none
hi CursorIM			cterm=none			ctermbg=none	ctermfg=none
hi CursorColumn		cterm=none			ctermbg=none	ctermfg=none
hi CursorLine		cterm=none			ctermbg=none	ctermfg=none
hi DiffAdd			cterm=reverse		ctermbg=none	ctermfg=2
hi DiffChange		cterm=none			ctermbg=none	ctermfg=none
hi DiffDelete		cterm=reverse		ctermbg=none	ctermfg=1
hi DiffText			cterm=reverse		ctermbg=none	ctermfg=4
hi ErrorMsg			cterm=none			ctermbg=1		ctermfg=none
hi Folded			cterm=none			ctermbg=none	ctermfg=none
hi FoldColumn		cterm=none			ctermbg=none	ctermfg=none
hi IncSearch		cterm=none			ctermbg=none	ctermfg=none
hi LineNr			cterm=bold			ctermbg=none	ctermfg=7
hi MatchParen		cterm=none			ctermbg=none	ctermfg=none
hi ModeMsg			cterm=none			ctermbg=none	ctermfg=none
hi MoreMsg			cterm=none			ctermbg=none	ctermfg=none
hi NonText			cterm=none			ctermbg=none	ctermfg=none
hi Normal			cterm=none			ctermbg=none	ctermfg=none
hi Pmenu			cterm=none			ctermbg=none	ctermfg=none
hi PmenuSel			cterm=none			ctermbg=none	ctermfg=none
hi PmenuSbar		cterm=none			ctermbg=none	ctermfg=none
hi PmenuThumb		cterm=none			ctermbg=none	ctermfg=none
hi Question			cterm=none			ctermbg=none	ctermfg=none
hi Search			cterm=reverse		ctermbg=0		ctermfg=7
hi SignColumn		cterm=none			ctermbg=none	ctermfg=none
hi SpecialKey		cterm=none			ctermbg=none	ctermfg=none
hi SpellBad			cterm=none			ctermbg=none	ctermfg=none
hi SpellCap			cterm=none			ctermbg=none	ctermfg=none
hi SpellLocal		cterm=none			ctermbg=none	ctermfg=none
hi SpellRare		cterm=none			ctermbg=none	ctermfg=none
hi StatusLine		cterm=reverse		ctermbg=none	ctermfg=6
hi StatusLineNC		cterm=reverse		ctermbg=none	ctermfg=7
hi TabLine			cterm=none			ctermbg=none	ctermfg=none
hi TabLineFill		cterm=none			ctermbg=none	ctermfg=none
hi TabLineSel		cterm=none			ctermbg=none	ctermfg=none
hi Title			cterm=none			ctermbg=none	ctermfg=none
hi VertSplit		cterm=none			ctermbg=8		ctermfg=8
hi Visual			cterm=reverse		ctermbg=0		ctermfg=7
hi VisualNOS		cterm=reverse		ctermbg=0		ctermfg=7
hi WarningMsg		cterm=none			ctermbg=1		ctermfg=none
hi WildMenu			cterm=none			ctermbg=none	ctermfg=none

hi ExtraWhitespace	cterm=none			ctermbg=1		ctermfg=none
hi NonPrintable		cterm=none			ctermbg=1		ctermfg=none
