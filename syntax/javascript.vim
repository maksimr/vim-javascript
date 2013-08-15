" Vim syntax file
" Language:  Javascript
" Maintainer:  Maksim Ryzhikov <rv.maksim@gmail.com>
" Extend built in vim javascript syntax highlighting

" ----------
" Common
syn keyword CommonSpecial  has add remove set get toggle replace
syn keyword CommonSpecial  addClass removeClass bind
syn keyword CommonSpecial  cache

syn keyword CommonKeyword  require
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
delcommand HiLink
