" Vim syntax file
" Language:  Javascript
" Maintainer:  Maksim Ryzhikov <rv.maksim@gmail.com>
" Extend built in vim javascript syntax highlighting

" ----------
" Common
syn keyword CommonSpecial  has add remove set get toggle replace
syn keyword CommonSpecial  addClass removeClass bind
syn keyword CommonSpecial  cache

syn keyword CommonKeyword  require that
syn match CommonProperty  '^\s\+[$_A-Za-z]\+[_A-Za-z0-9]*:'

" ----------
" Dojo
syn keyword DojoSpecial  byId isDescendant setSelectable getNodeProp
syn keyword DojoKeyword  dojo dijit dojox

" ----------
" jQuery
syn match jQuerySpecial  "\.\(query\|on\|style\|attr\|forEach\|map\|delegate\|proxy\)"
syn keyword jQueryKeyword  jQuery

" ----------
" Node
syn keyword NodeKeyword  exports __dirname

" ----------
" Jasmine
syn match JasmineSpecial  "\.\(toEqual\|toMatch\)"
syn keyword JasmineKeyword  jasmine describe it afterEach beforeEach expect spyOn runs waits waitsFor

" ----------
" Angualar
syn match AngularSpecial  "\.\(service\|factory\|value\)"
syn keyword AngularKeyword  angular

" ----------
" Debug
syn keyword Debug console print

" ----------
" JSDoc / JSDoc Toolkit
syn match  jsDocTags         containedin=javaScriptComment "@\(alias\|augments\|borrows\|class\|constructs\|default\|defaultvalue\|emits\|exception\|exports\|extends\|file\|fires\|kind\|listens\|member\|memberOf\|mixes\|module\|name\|namespace\|requires\|throws\|var\|variation\|version\)\>" nextgroup=jsDocParam skipwhite
syn match  jsDocTags         containedin=javaScriptComment "@\(arg\|argument\|param\|property\)\>" nextgroup=jsDocType skipwhite
syn match  jsDocTags         containedin=javaScriptComment "@\(callback\|enum\|external\|this\|type\|typedef\|return\|returns\)\>" nextgroup=jsDocTypeNoParam skipwhite
syn match  jsDocTags         containedin=javaScriptComment "@\(lends\|see\)\>" nextgroup=jsDocSeeTag skipwhite
syn match  jsDocTags         containedin=javaScriptComment "@\(abstract\|access\|author\|classdesc\|constant\|const\|constructor\|copyright\|deprecated\|desc\|description\|event\|example\|fileOverview\|function\|global\|ignore\|inner\|instance\|license\|method\|mixin\|overview\|private\|protected\|public\|readonly\|since\|static\|todo\|summary\|undocumented\|virtual\)\>"
syn region jsDocType         start="{" end="}" oneline contained nextgroup=jsDocParam skipwhite
syn match  jsDocType         "\%(#\|\"\|\w\|\.\|:\|\/\)\+" nextgroup=jsDocParam skipwhite contained
syn region jsDocTypeNoParam  start="{" end="}" oneline contained
syn match  jsDocTypeNoParam  "\%(#\|\"\|\w\|\.\|:\|\/\)\+" contained
syn match  jsDocParam        "\%(#\|\"\|{\|}\|\w\|\.\|:\|\/\)\+" contained
syn region jsDocSeeTag       matchgroup=jsDocSeeTag start="{" end="}" contains=jsDocTags contained

command! -nargs=+ HiLink hi def link <args>

HiLink CommonSpecial Special
HiLink CommonKeyword Keyword
HiLink CommonProperty ModeMsg

HiLink DojoSpecial Special
HiLink DojoKeyword Keyword

HiLink jQuerySpecial Special
HiLink jQueryKeyword Keyword

HiLink NodeKeyword Keyword

HiLink AngularSpecial Special
HiLink AngularKeyword Keyword

HiLink JasmineSpecial Special
HiLink JasmineKeyword Keyword

HiLink jsDocTags Special
HiLink jsDocSeeTag Function
HiLink jsDocType Comment
HiLink jsDocTypeNoParam Comment
HiLink jsDocParam Comment

HiLink localVars DocParam
delcommand HiLink
