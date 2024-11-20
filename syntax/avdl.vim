" Keywords
syntax keyword avdlKeyword record protocol enum extends error
syntax keyword avdlKeyword boolean bytes double float int long null string array map union timestamp_ms

" Annotations
syntax match avdlAnnotation /@[A-Za-z_][A-Za-z0-9_]*/

" Types (user-defined or built-in)
syntax match avdlType /\<[A-Za-z_][A-Za-z0-9_]*\>/ contained

" Comments
syntax match avdlComment "//.*"
syntax region avdlMultilineComment start="/\*" end="\*/"

" Strings
syntax region avdlString start=+"+ end=+"+
syntax region avdlString start=+'+ end=+'+

" Numbers
syntax match avdlNumber /\<\d\+\>/

" Highlight groups
highlight link avdlKeyword Keyword
highlight link avdlAnnotation PreProc
highlight link avdlType Type
highlight link avdlComment Comment
highlight link avdlMultilineComment Comment
highlight link avdlString String
highlight link avdlNumber Number
