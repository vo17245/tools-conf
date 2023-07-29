"=================map=============
"inoremap就只在插入(insert)模式下生效
"vnoremap只在visual模式下生效
"nnoremap就在normal模式下(狂按esc后的模式)生效

vnoremap x "_x
nnoremap dx "_dd

"===========剪贴板================

set clipboard^=unnamed,unnamedplus

"===========缩进=================
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

inoremap <C-a> <C-V>

