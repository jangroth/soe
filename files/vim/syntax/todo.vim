" File:        todo.txt.vim
" Description: Todo.txt syntax settings
" Author:      Leandro Freitas <freitass@gmail.com>
" Licence:     Vim licence
" Website:     http://github.com/freitass/todo.txt.vim
" Version:     0.3

if exists("b:current_syntax")
    finish
endif

syntax  match  TodoDone       '^[xX]\s.\+$'              contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoComment    '^#.*$'                    contains=NONE
syntax  match  TodoPriorityA  '^([aA])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityB  '^([bB])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityC  '^([cC])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityD  '^([dD])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityE  '^([eE])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityF  '^([fF])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityG  '^([gG])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityH  '^([hH])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityI  '^([iI])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityJ  '^([jJ])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityK  '^([kK])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityL  '^([lL])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityM  '^([mM])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityN  '^([nN])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityO  '^([oO])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityP  '^([pP])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityQ  '^([qQ])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityR  '^([rR])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityS  '^([sS])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityT  '^([tT])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityU  '^([uU])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityV  '^([vV])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityW  '^([wW])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityX  '^([xX])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityY  '^([yY])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoPriorityZ  '^([zZ])\s.\+$'            contains=TodoDate,TodoProject,TodoContext,TodoDue,TodoRepeat
syntax  match  TodoDate       '\d\{4\}-\d\{2\}-\d\{2\}'  contains=NONE
syntax  match  TodoProject    '+\w\+'                    contains=NONE
syntax  match  TodoContext    '@\w\+'                    contains=NONE
syntax  match  TodoDue        '=\w\+'                    contains=NONE
syntax  match  TodoRepeat     '&\w\+'                    contains=NONE

" Other priority colours might be defined by the user
highlight  default  link  TodoDone       Comment
highlight  default  link  TodoComment    Comment
highlight  default  link  TodoPriorityA  Constant
highlight  default  link  TodoPriorityB  Statement
highlight  default  link  TodoPriorityC  Identifier
highlight  default  link  TodoDate       PreProc
highlight  default  link  TodoProject    Special
highlight  default  link  TodoContext    Special
highlight  default  link  TodoDue        Comment
highlight  default  link  TodoRepeat     Special

let b:current_syntax = "todo"
