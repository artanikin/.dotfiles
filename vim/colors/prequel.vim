"
" ██████╗ ██████╗ ███████╗ ██████╗ ██╗   ██╗███████╗██╗
" ██╔══██╗██╔══██╗██╔════╝██╔═══██╗██║   ██║██╔════╝██║
" ██████╔╝██████╔╝█████╗  ██║   ██║██║   ██║█████╗  ██║
" ██╔═══╝ ██╔══██╗██╔══╝  ██║▄▄ ██║██║   ██║██╔══╝  ██║
" ██║     ██║  ██║███████╗╚██████╔╝╚██████╔╝███████╗███████╗
" ╚═╝     ╚═╝  ╚═╝╚══════╝ ╚══▀▀═╝  ╚═════╝ ╚══════╝╚══════╝
"
"     Vim colorscheme based on the prequel color palette
"
" by Robin Gagnon
" https://github.com/reobin/prequel

scriptencoding utf-8

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="prequel"

" ==========================
" Highlighting Function
" ==========================
"  >> (inspired by https://github.com/tomasiser/vim-code-dark and https://github.com/chriskempson/base16-vim)
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
let s:background   = { 'gui': '#282B32', 'cterm256': '234'  }
let s:brightBlack  = { 'gui': '#171p23', 'cterm256': '235'  }
let s:steel        = { 'gui': '#DEDEDE', 'cterm256': '253'  }
let s:gray1        = { 'gui': '#323A3E', 'cterm256': '237'  }
let s:gray2        = { 'gui': '#3E4149', 'cterm256': '239'  }
let s:gray3        = { 'gui': '#6B6B6B', 'cterm256': '242'  }
let s:gray4        = { 'gui': '#B0B0B0', 'cterm256': '249'  }
let s:red          = { 'gui': '#D45B28', 'cterm256': '1'    }
let s:brightRed    = { 'gui': '#ED652C', 'cterm256': '196'  }
let s:errorRed     = { 'gui': '#D43F3F', 'cterm256': '196'  }
let s:yellow       = { 'gui': '#DEB53D', 'cterm256': '220'  }
let s:green        = { 'gui': '#8CA87C', 'cterm256': '71'   }
let s:brightYellow = { 'gui': '#F8D146', 'cterm256': '191'  }
let s:blue         = { 'gui': '#77979D', 'cterm256': '110'  }
let s:magenta      = { 'gui': '#8e7dac', 'cterm256': '170'  }
let s:cyan         = { 'gui': '#8BB5CC', 'cterm256': '111'  }
let s:white        = { 'gui': '#E5E3DD', 'cterm256': '231'  }
let s:none         = { 'gui': 'NONE'   , 'cterm256': 'NONE' }

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:gray1, 'none')
call <sid>hi('Cursor', s:background, s:steel, 'none')
call <sid>hi('CursorColumn', s:none, s:gray1, 'none')
call <sid>hi('CursorLine', s:none, s:gray1, 'none')
call <sid>hi('CursorLineNr', s:white, s:gray1, 'none')
call <sid>hi('Directory', s:blue, s:background, 'none')
call <sid>hi('Folded', s:gray3, s:none, 'none')
call <sid>hi('IncSearch', s:background, s:cyan, 'none')
call <sid>hi('LineNr', s:gray3, s:brightBlack, 'none')
call <sid>hi('MatchParen', s:background, s:yellow, 'none')
call <sid>hi('Normal', s:white, s:background, 'none')
call <sid>hi('Pmenu', s:none, s:none, 'none')
call <sid>hi('PmenuSel', s:none, s:gray2, 'none')
call <sid>hi('Search', s:background, s:blue, 'none')
call <sid>hi('StatusLine', s:background, s:steel, 'none')
call <sid>hi('StatusLineNC', s:gray3, s:brightBlack, 'none')
call <sid>hi('VertSplit', s:gray3, s:gray3, 'none')
call <sid>hi('Visual', s:none, s:gray2, 'none')

" General
call <sid>hi('Boolean', s:brightYellow, s:none, 'none')
call <sid>hi('Character', s:brightYellow, s:none, 'none')
call <sid>hi('Comment', s:gray3, s:none, 'none')
call <sid>hi('Conditional', s:magenta, s:none, 'none')
call <sid>hi('Constant', s:brightRed, s:none, 'none')
call <sid>hi('Define', s:magenta, s:none, 'none')
call <sid>hi('DiffAdd', s:background, s:green, 'none')
call <sid>hi('DiffChange', s:background, s:yellow, 'none')
call <sid>hi('DiffDelete', s:white, s:red, 'none')
call <sid>hi('DiffText', s:gray1, s:blue, 'none')
call <sid>hi('ErrorMsg', s:white, s:red, 'none')
call <sid>hi('Float', s:brightYellow, s:none, 'none')
call <sid>hi('Function', s:blue, s:none, 'none')
call <sid>hi('Identifier', s:yellow, s:none, 'none')
call <sid>hi('Keyword', s:yellow, s:none, 'none')
call <sid>hi('Label', s:green, s:none, 'none')
call <sid>hi('NonText', s:gray1, s:background, 'none')
call <sid>hi('Number', s:brightYellow, s:none, 'none')
call <sid>hi('Operator', s:magenta, s:none, 'none')
call <sid>hi('PreProc', s:magenta, s:none, 'none')
call <sid>hi('Special', s:white, s:none, 'none')
call <sid>hi('SpecialKey', s:gray1, s:background, 'none')
call <sid>hi('SpellBad', s:errorRed, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:blue, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:brightRed, s:none, 'undercurl')
call <sid>hi('Statement', s:magenta, s:none, 'none')
call <sid>hi('StorageClass', s:yellow, s:none, 'none')
call <sid>hi('String', s:green, s:none, 'none')
call <sid>hi('Tag', s:yellow, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:gray3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:white, s:red, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:background, s:green, 'none')
  call <sid>hi('DiffChange', s:background, s:yellow, 'none')
  call <sid>hi('DiffDelete', s:errorRed, s:red, 'none')
  call <sid>hi('DiffText', s:gray1, s:blue, 'none')
else
  call <sid>hi('DiffAdd', s:green, s:none, 'none')
  call <sid>hi('DiffChange', s:yellow, s:none, 'none')
  call <sid>hi('DiffDelete', s:errorRed, s:none, 'none')
  call <sid>hi('DiffText', s:steel, s:blue, 'none')
endif

" CSS
call <sid>hi('cssAttr', s:magenta, s:none, 'none')
call <sid>hi('cssAttrRegion', s:magenta, s:none, 'none')
call <sid>hi('cssBraces', s:white, s:none, 'none')
call <sid>hi('cssBrowserPrefix', s:steel, s:none, 'none')
call <sid>hi('cssClassName', s:cyan, s:none, 'none')
call <sid>hi('cssClassNameDot', s:steel, s:none, 'none')
call <sid>hi('cssClassSelectorDot', s:steel, s:none, 'none')
call <sid>hi('cssColor', s:blue, s:none, 'none')
call <sid>hi('cssCommonAttr', s:magenta, s:none, 'none')
call <sid>hi('cssCustomProperty', s:gray4, s:none, 'none')
call <sid>hi('cssDefinition', s:gray4, s:none, 'none')
call <sid>hi('cssFunction', s:steel, s:none, 'none')
call <sid>hi('cssFunctionName', s:blue, s:none, 'none')
call <sid>hi('cssIdentifier', s:cyan, s:none, 'none')
call <sid>hi('cssImportant', s:brightRed, s:none, 'none')
call <sid>hi('cssInclude', s:steel, s:none, 'none')
call <sid>hi('cssMedia', s:brightYellow, s:none, 'none')
call <sid>hi('cssMediaBlock', s:brightYellow, s:none, 'none')
call <sid>hi('cssProp', s:gray4, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:gray4, s:none, 'none')
call <sid>hi('cssTextProp', s:gray4, s:none, 'none')
call <sid>hi('cssAnimationProp', s:gray4, s:none, 'none')
call <sid>hi('cssUIProp', s:gray4, s:none, 'none')
call <sid>hi('cssTransformProp', s:gray4, s:none, 'none')
call <sid>hi('cssTransitionProp', s:gray4, s:none, 'none')
call <sid>hi('cssPrintProp', s:gray4, s:none, 'none')
call <sid>hi('cssPositioningProp', s:gray4, s:none, 'none')
call <sid>hi('cssBoxProp', s:gray4, s:none, 'none')
call <sid>hi('cssFontDescriptorProp', s:gray4, s:none, 'none')
call <sid>hi('cssFlexibleBoxProp', s:gray4, s:none, 'none')
call <sid>hi('cssBorderOutlineProp', s:gray4, s:none, 'none')
call <sid>hi('cssBackgroundProp', s:gray4, s:none, 'none')
call <sid>hi('cssMarginProp', s:gray4, s:none, 'none')
call <sid>hi('cssListProp', s:gray4, s:none, 'none')
call <sid>hi('cssTableProp', s:gray4, s:none, 'none')
call <sid>hi('cssFontProp', s:gray4, s:none, 'none')
call <sid>hi('cssPaddingProp', s:gray4, s:none, 'none')
call <sid>hi('cssDimensionProp', s:gray4, s:none, 'none')
call <sid>hi('cssRenderProp', s:gray4, s:none, 'none')
call <sid>hi('cssColorProp', s:gray4, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:gray4, s:none, 'none')
call <sid>hi('cssPropDefinition', s:gray4, s:none, 'none')
call <sid>hi('cssPseudoClass', s:yellow, s:none, 'none')
call <sid>hi('cssPseudoClassId', s:yellow, s:none, 'none')
call <sid>hi('cssPseudoClassLang', s:yellow, s:none, 'none')
call <sid>hi('cssSelectorOperator', s:steel, s:none, 'none')
call <sid>hi('cssTagName', s:cyan, s:none, 'none')
call <sid>hi('cssURL', s:yellow, s:none, 'none')
call <sid>hi('cssUnitDecorators', s:magenta, s:none, 'none')
call <sid>hi('cssUnits', s:magenta, s:none, 'none')
call <sid>hi('cssValueLength', s:blue, s:none, 'none')
call <sid>hi('cssValueNumber', s:blue, s:none, 'none')
call <sid>hi('cssValueKeyword', s:green, s:none, 'none')
call <sid>hi('cssVendor', s:steel, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:magenta, s:none, 'none')
call <sid>hi('htmlEndTag', s:blue, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:brightYellow, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:cyan, s:none, 'none')
call <sid>hi('htmlTag', s:blue, s:none, 'none')
call <sid>hi('htmlTagName', s:blue, s:none, 'none')

" JavaScript
call <sid>hi('javaScript', s:white, s:none, 'none')
call <sid>hi('javaScriptFunction', s:yellow, s:none, 'none')
call <sid>hi('javaScriptIdentifier', s:blue, s:none, 'none')
call <sid>hi('javaScriptMember', s:steel, s:none, 'none')
call <sid>hi('javaScriptNull', s:brightYellow, s:none, 'none')
call <sid>hi('javaScriptNumber', s:brightYellow, s:none, 'none')
call <sid>hi('javaScriptNumber', s:brightYellow, s:none, 'none')
call <sid>hi('javaScriptParens', s:white, s:none, 'none')
call <sid>hi('javaScriptSpecial', s:brightYellow, s:none, 'none')
call <sid>hi('javaScriptStringS', s:green, s:none, 'none')
call <sid>hi('javascriptArrayMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptArrayStaticMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptArrowFunc', s:yellow, s:none, 'none')
call <sid>hi('javascriptAsyncFuncKeyword', s:yellow, s:none, 'none')
call <sid>hi('javascriptAwaitFuncKeyword', s:yellow, s:none, 'none')
call <sid>hi('javascriptBraces', s:white, s:none, 'none')
call <sid>hi('javascriptBrackets', s:white, s:none, 'none')
call <sid>hi('javascriptCacheMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptClassExtends', s:steel, s:none, 'none')
call <sid>hi('javascriptClassKeyword', s:yellow, s:none, 'none')
call <sid>hi('javascriptClassName', s:blue, s:none, 'none')
call <sid>hi('javascriptClassSuperName', s:blue, s:none, 'none')
call <sid>hi('javascriptDOMElemAttrs', s:steel, s:none, 'none')
call <sid>hi('javascriptDOMEventMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptDOMNodeMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptDOMStorageMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptDateMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptDefault', s:yellow, s:none, 'none')
call <sid>hi('javascriptDocNamedParamType', s:gray4, s:none, 'none')
call <sid>hi('javascriptDocNotation', s:gray4, s:none, 'none')
call <sid>hi('javascriptDocParamName', s:gray4, s:none, 'none')
call <sid>hi('javascriptDocParamType', s:gray4, s:none, 'none')
call <sid>hi('javascriptDocTags', s:gray4, s:none, 'none')
call <sid>hi('javascriptEndColons', s:white, s:none, 'none')
call <sid>hi('javascriptExport', s:magenta, s:none, 'none')
call <sid>hi('javascriptHeadersMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptIdentifierName', s:blue, s:none, 'none')
call <sid>hi('javascriptImport', s:magenta, s:none, 'none')
call <sid>hi('javascriptLabel', s:steel, s:none, 'none')
call <sid>hi('javascriptLogicSymbols', s:magenta, s:none, 'none')
call <sid>hi('javascriptMathStaticMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptObjectLabel', s:steel, s:none, 'none')
call <sid>hi('javascriptOperator', s:magenta, s:none, 'none')
call <sid>hi('javascriptPropertyName', s:steel, s:none, 'none')
call <sid>hi('javascriptStringMethod', s:steel, s:none, 'none')
call <sid>hi('javascriptVariable', s:white, s:none, 'none')
call <sid>hi('javascriptYield', s:yellow, s:none, 'none')
call <sid>hi('jsArrowFunction', s:yellow, s:none, 'none')
call <sid>hi('jsClassDefinition', s:blue, s:none, 'none')
call <sid>hi('jsClassKeyword', s:yellow, s:none, 'none')
call <sid>hi('jsDecorator', s:brightYellow, s:none, 'none')
call <sid>hi('jsDestructuringBlock', s:steel, s:none, 'none')
call <sid>hi('jsExportDefault', s:yellow, s:none, 'none')
call <sid>hi('jsExtendsKeyword', s:steel, s:none, 'none')
call <sid>hi('jsFuncArgs', s:steel, s:none, 'none')
call <sid>hi('jsFuncCall', s:blue, s:none, 'none')
call <sid>hi('jsFunction', s:yellow, s:none, 'none')
call <sid>hi('jsGlobalObjects', s:brightRed, s:none, 'none')
call <sid>hi('jsModuleKeyword', s:steel, s:none, 'none')
call <sid>hi('jsNull', s:brightYellow, s:none, 'none')
call <sid>hi('jsObjectBraces', s:white, s:none, 'none')
call <sid>hi('jsObjectKey', s:steel, s:none, 'none')
call <sid>hi('jsObjectStringKey', s:green, s:none, 'none')
call <sid>hi('jsRegexpString', s:brightYellow, s:none, 'none')
call <sid>hi('jsReturn', s:magenta, s:none, 'none')
call <sid>hi('jsSpecial', s:brightYellow, s:none, 'none')
call <sid>hi('jsSuper', s:brightRed, s:none, 'none')
call <sid>hi('jsTemplateBraces', s:steel, s:none, 'none')
call <sid>hi('jsTemplateString', s:green, s:none, 'none')
call <sid>hi('jsThis', s:blue, s:none, 'none')
call <sid>hi('jsVariableDef', s:white, s:none, 'none')

" JSX
call <sid>hi('jsxAttrib', s:magenta, s:none, 'none')
call <sid>hi('jsxAttributeBraces', s:white, s:none, 'none')
call <sid>hi('jsxCloseString', s:cyan, s:none, 'none')
call <sid>hi('jsxCloseTag', s:blue, s:none, 'none')
call <sid>hi('jsxString', s:green, s:none, 'none')
call <sid>hi('jsxTag', s:blue, s:none, 'none')
call <sid>hi('jsxTagName', s:cyan, s:none, 'none')

" Ruby
call <sid>hi('rubyBlockParameter', s:blue, s:none, 'none')
call <sid>hi('rubyClass', s:magenta, s:none, 'none')
call <sid>hi('rubyClassVariable', s:white, s:none, 'none')
call <sid>hi('rubyConstant', s:brightRed, s:none, 'none')
call <sid>hi('rubyControl', s:magenta, s:none, 'none')
call <sid>hi('rubyEscape', s:brightYellow, s:none, 'none')
call <sid>hi('rubyException', s:magenta, s:none, 'none')
call <sid>hi('rubyFunction', s:blue, s:none, 'none')
call <sid>hi('rubyGlobalVariable', s:white, s:none, 'none')
call <sid>hi('rubyInclude', s:magenta, s:none, 'none')
call <sid>hi('rubyInstanceVariable', s:white, s:none, 'none')
call <sid>hi('rubyInterpolationDelimiter', s:none, s:none, 'none')
call <sid>hi('rubyOperator', s:magenta, s:none, 'none')
call <sid>hi('rubyPseudoVariable', s:white, s:none, 'none')
call <sid>hi('rubyRegexp', s:green, s:none, 'none')
call <sid>hi('rubyRegexpDelimiter', s:green, s:none, 'none')
call <sid>hi('rubyStringDelimiter', s:green, s:none, 'none')
call <sid>hi('rubySymbol', s:brightYellow, s:none, 'none')

" Ruby (Embedded)
call <sid>hi('erubyComment', s:gray3, s:none, 'none')
call <sid>hi('erubyDelimiter', s:none, s:none, 'none')
call <sid>hi('erubyRailsMethod', s:brightRed, s:none, 'none')

" Ruby on Rails
call <sid>hi('rubyRailsARAssociationMethod', s:brightRed, s:none, 'none')
call <sid>hi('rubyRailsARMethod', s:brightRed, s:none, 'none')
call <sid>hi('rubyRailsMethod', s:brightRed, s:none, 'none')
call <sid>hi('rubyRailsRenderMethod', s:brightRed, s:none, 'none')
call <sid>hi('rubyRailsUserClass', s:brightRed, s:none, 'none')

" XML
call <sid>hi('xmlAttrib', s:magenta, s:none, 'none')
call <sid>hi('xmlEndTag', s:blue, s:none, 'none')
call <sid>hi('xmlTag', s:blue, s:none, 'none')
call <sid>hi('xmlTagName', s:cyan, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:white, s:none, 'none')
call <sid>hi('yamlAnchor', s:white, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:green, s:none, 'none')
call <sid>hi('yamlKey', s:yellow, s:none, 'none')
