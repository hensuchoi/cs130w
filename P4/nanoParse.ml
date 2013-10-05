type token =
  | Num of (int)
  | TRUE
  | FALSE
  | Id of (string)
  | LET
  | REC
  | EQ
  | IN
  | FUN
  | ARROW
  | IF
  | THEN
  | ELSE
  | EOF
  | PLUS
  | MINUS
  | MUL
  | DIV
  | LT
  | LE
  | NE
  | AND
  | OR
  | LPAREN
  | RPAREN
  | LBRAC
  | SEMI
  | RBRAC
  | COLONCOLON

open Parsing;;
# 2 "nanoParse.mly"
(* See this for a tutorial on ocamlyacc 
 * http://plus.kaist.ac.kr/~shoh/ocaml/ocamllex-ocamlyacc/ocamlyacc-tutorial/ *)
open Nano 
# 38 "nanoParse.ml"
let yytransl_const = [|
  258 (* TRUE *);
  259 (* FALSE *);
  261 (* LET *);
  262 (* REC *);
  263 (* EQ *);
  264 (* IN *);
  265 (* FUN *);
  266 (* ARROW *);
  267 (* IF *);
  268 (* THEN *);
  269 (* ELSE *);
    0 (* EOF *);
  270 (* PLUS *);
  271 (* MINUS *);
  272 (* MUL *);
  273 (* DIV *);
  274 (* LT *);
  275 (* LE *);
  276 (* NE *);
  277 (* AND *);
  278 (* OR *);
  279 (* LPAREN *);
  280 (* RPAREN *);
  281 (* LBRAC *);
  282 (* SEMI *);
  283 (* RBRAC *);
  284 (* COLONCOLON *);
    0|]

let yytransl_block = [|
  257 (* Num *);
  260 (* Id *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\001\000\002\000\002\000\003\000\
\003\000\004\000\004\000\004\000\004\000\004\000\005\000\005\000\
\005\000\005\000\005\000\005\000\006\000\006\000\007\000\007\000\
\007\000\008\000\008\000\008\000\009\000\009\000\010\000\010\000\
\010\000\010\000\010\000\000\000"

let yylen = "\002\000\
\006\000\007\000\004\000\006\000\001\000\003\000\001\000\003\000\
\001\000\003\000\003\000\003\000\003\000\001\000\003\000\004\000\
\003\000\002\000\002\000\001\000\002\000\001\000\003\000\003\000\
\001\000\003\000\003\000\001\000\002\000\001\000\003\000\001\000\
\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\032\000\033\000\034\000\035\000\000\000\000\000\
\000\000\000\000\000\000\036\000\000\000\000\000\000\000\000\000\
\020\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\
\000\000\000\000\019\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\018\000\000\000\000\000\000\000\000\000\
\000\000\029\000\000\000\000\000\000\000\000\000\031\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\
\000\000\000\000\000\000\000\000\001\000\000\000\004\000\002\000"

let yydgoto = "\002\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000\021\000"

let yysindex = "\008\000\
\009\255\000\000\000\000\000\000\000\000\000\000\015\255\018\255\
\009\255\009\255\004\255\000\000\003\255\007\255\055\255\245\254\
\000\000\042\255\048\255\049\255\000\000\023\255\029\255\025\255\
\046\255\030\255\000\000\014\255\045\255\045\255\045\255\045\255\
\045\255\045\255\045\255\000\000\045\255\049\255\049\255\049\255\
\049\255\000\000\009\255\053\255\009\255\009\255\000\000\045\255\
\003\255\007\255\055\255\055\255\055\255\055\255\245\254\245\254\
\048\255\048\255\049\255\049\255\058\255\009\255\000\000\056\255\
\245\254\009\255\063\255\009\255\000\000\009\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\158\000\032\001\224\000\155\000\
\000\000\133\000\067\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\176\000\054\001\230\000\245\000\251\000\010\001\173\000\191\000\
\089\000\111\000\023\000\045\000\000\000\000\000\000\000\000\000\
\209\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\249\255\047\000\053\000\046\000\245\255\000\000\000\000\043\000\
\044\000\240\255"

let yytablesize = 590
let yytable = "\028\000\
\028\000\025\000\026\000\042\000\003\000\004\000\005\000\006\000\
\001\000\003\000\004\000\005\000\006\000\007\000\035\000\036\000\
\037\000\008\000\022\000\009\000\023\000\024\000\026\000\055\000\
\029\000\056\000\010\000\030\000\011\000\043\000\027\000\010\000\
\044\000\011\000\045\000\061\000\065\000\063\000\064\000\048\000\
\036\000\037\000\042\000\042\000\027\000\003\000\004\000\005\000\
\006\000\003\000\004\000\005\000\006\000\047\000\067\000\038\000\
\039\000\046\000\069\000\062\000\071\000\031\000\072\000\040\000\
\041\000\066\000\025\000\010\000\068\000\011\000\070\000\010\000\
\032\000\033\000\034\000\049\000\051\000\052\000\053\000\054\000\
\057\000\058\000\050\000\059\000\060\000\000\000\000\000\000\000\
\023\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\024\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\022\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\014\000\000\000\000\000\005\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\017\000\000\000\000\000\006\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\015\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\009\000\
\000\000\000\000\000\000\000\000\000\000\010\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\011\000\000\000\000\000\000\000\
\000\000\000\000\012\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\028\000\
\028\000\013\000\000\000\000\000\028\000\028\000\028\000\028\000\
\028\000\028\000\028\000\028\000\028\000\028\000\028\000\000\000\
\028\000\000\000\028\000\028\000\028\000\026\000\026\000\007\000\
\000\000\000\000\026\000\026\000\026\000\026\000\026\000\026\000\
\026\000\026\000\026\000\026\000\026\000\000\000\026\000\000\000\
\026\000\026\000\026\000\027\000\027\000\008\000\000\000\000\000\
\027\000\027\000\027\000\027\000\027\000\027\000\027\000\027\000\
\027\000\027\000\027\000\000\000\027\000\000\000\027\000\027\000\
\027\000\025\000\025\000\000\000\000\000\000\000\025\000\025\000\
\025\000\025\000\000\000\000\000\025\000\025\000\025\000\025\000\
\025\000\000\000\025\000\000\000\025\000\025\000\025\000\023\000\
\023\000\000\000\000\000\000\000\023\000\023\000\023\000\023\000\
\000\000\000\000\023\000\023\000\023\000\023\000\023\000\000\000\
\023\000\000\000\023\000\023\000\023\000\024\000\024\000\000\000\
\000\000\000\000\024\000\024\000\024\000\024\000\000\000\000\000\
\024\000\024\000\024\000\024\000\024\000\000\000\024\000\000\000\
\024\000\024\000\024\000\022\000\022\000\000\000\000\000\000\000\
\022\000\022\000\000\000\000\000\000\000\000\000\022\000\022\000\
\022\000\022\000\022\000\000\000\022\000\000\000\022\000\022\000\
\022\000\014\000\014\000\000\000\000\000\005\000\014\000\014\000\
\000\000\005\000\005\000\000\000\014\000\014\000\014\000\014\000\
\014\000\000\000\014\000\017\000\017\000\005\000\000\000\006\000\
\017\000\017\000\000\000\006\000\006\000\000\000\017\000\017\000\
\017\000\017\000\017\000\000\000\017\000\015\000\015\000\006\000\
\000\000\000\000\015\000\015\000\000\000\000\000\000\000\000\000\
\015\000\015\000\015\000\015\000\015\000\000\000\015\000\016\000\
\016\000\000\000\000\000\000\000\016\000\016\000\000\000\000\000\
\000\000\000\000\016\000\016\000\016\000\016\000\016\000\009\000\
\016\000\000\000\000\000\009\000\009\000\010\000\000\000\000\000\
\000\000\010\000\010\000\000\000\009\000\009\000\000\000\009\000\
\000\000\000\000\010\000\010\000\011\000\010\000\000\000\000\000\
\011\000\011\000\012\000\000\000\000\000\000\000\012\000\012\000\
\000\000\011\000\011\000\000\000\011\000\000\000\000\000\012\000\
\012\000\013\000\012\000\000\000\000\000\013\000\013\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\013\000\013\000\
\000\000\013\000\000\000\000\000\000\000\000\000\000\000\007\000\
\000\000\000\000\000\000\007\000\007\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\007\000\000\000\007\000\
\000\000\000\000\000\000\000\000\000\000\008\000\000\000\000\000\
\000\000\008\000\008\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\008\000\000\000\008\000"

let yycheck = "\011\000\
\000\000\009\000\010\000\020\000\001\001\002\001\003\001\004\001\
\001\000\001\001\002\001\003\001\004\001\005\001\026\001\027\001\
\028\001\009\001\004\001\011\001\006\001\004\001\000\000\035\000\
\022\001\037\000\023\001\021\001\025\001\007\001\027\001\023\001\
\004\001\025\001\010\001\043\000\048\000\045\000\046\000\026\001\
\027\001\028\001\059\000\060\000\000\000\001\001\002\001\003\001\
\004\001\001\001\002\001\003\001\004\001\024\001\062\000\014\001\
\015\001\012\001\066\000\007\001\068\000\007\001\070\000\016\001\
\017\001\008\001\000\000\023\001\013\001\025\001\008\001\023\001\
\018\001\019\001\020\001\029\000\031\000\032\000\033\000\034\000\
\038\000\039\000\030\000\040\000\041\000\255\255\255\255\255\255\
\000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\000\000\255\255\255\255\000\000\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\000\000\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\000\000\
\255\255\255\255\255\255\255\255\255\255\000\000\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\007\001\
\008\001\000\000\255\255\255\255\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\255\255\
\024\001\255\255\026\001\027\001\028\001\007\001\008\001\000\000\
\255\255\255\255\012\001\013\001\014\001\015\001\016\001\017\001\
\018\001\019\001\020\001\021\001\022\001\255\255\024\001\255\255\
\026\001\027\001\028\001\007\001\008\001\000\000\255\255\255\255\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\255\255\024\001\255\255\026\001\027\001\
\028\001\007\001\008\001\255\255\255\255\255\255\012\001\013\001\
\014\001\015\001\255\255\255\255\018\001\019\001\020\001\021\001\
\022\001\255\255\024\001\255\255\026\001\027\001\028\001\007\001\
\008\001\255\255\255\255\255\255\012\001\013\001\014\001\015\001\
\255\255\255\255\018\001\019\001\020\001\021\001\022\001\255\255\
\024\001\255\255\026\001\027\001\028\001\007\001\008\001\255\255\
\255\255\255\255\012\001\013\001\014\001\015\001\255\255\255\255\
\018\001\019\001\020\001\021\001\022\001\255\255\024\001\255\255\
\026\001\027\001\028\001\007\001\008\001\255\255\255\255\255\255\
\012\001\013\001\255\255\255\255\255\255\255\255\018\001\019\001\
\020\001\021\001\022\001\255\255\024\001\255\255\026\001\027\001\
\028\001\007\001\008\001\255\255\255\255\008\001\012\001\013\001\
\255\255\012\001\013\001\255\255\018\001\019\001\020\001\021\001\
\022\001\255\255\024\001\007\001\008\001\024\001\255\255\008\001\
\012\001\013\001\255\255\012\001\013\001\255\255\018\001\019\001\
\020\001\021\001\022\001\255\255\024\001\007\001\008\001\024\001\
\255\255\255\255\012\001\013\001\255\255\255\255\255\255\255\255\
\018\001\019\001\020\001\021\001\022\001\255\255\024\001\007\001\
\008\001\255\255\255\255\255\255\012\001\013\001\255\255\255\255\
\255\255\255\255\018\001\019\001\020\001\021\001\022\001\008\001\
\024\001\255\255\255\255\012\001\013\001\008\001\255\255\255\255\
\255\255\012\001\013\001\255\255\021\001\022\001\255\255\024\001\
\255\255\255\255\021\001\022\001\008\001\024\001\255\255\255\255\
\012\001\013\001\008\001\255\255\255\255\255\255\012\001\013\001\
\255\255\021\001\022\001\255\255\024\001\255\255\255\255\021\001\
\022\001\008\001\024\001\255\255\255\255\012\001\013\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\021\001\022\001\
\255\255\024\001\255\255\255\255\255\255\255\255\255\255\008\001\
\255\255\255\255\255\255\012\001\013\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\022\001\255\255\024\001\
\255\255\255\255\255\255\255\255\255\255\008\001\255\255\255\255\
\255\255\012\001\013\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\022\001\255\255\024\001"

let yynames_const = "\
  TRUE\000\
  FALSE\000\
  LET\000\
  REC\000\
  EQ\000\
  IN\000\
  FUN\000\
  ARROW\000\
  IF\000\
  THEN\000\
  ELSE\000\
  EOF\000\
  PLUS\000\
  MINUS\000\
  MUL\000\
  DIV\000\
  LT\000\
  LE\000\
  NE\000\
  AND\000\
  OR\000\
  LPAREN\000\
  RPAREN\000\
  LBRAC\000\
  SEMI\000\
  RBRAC\000\
  COLONCOLON\000\
  "

let yynames_block = "\
  Num\000\
  Id\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Nano.expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Nano.expr) in
    Obj.repr(
# 32 "nanoParse.mly"
                               ( Let(_2,_4,_6) )
# 326 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : Nano.expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : Nano.expr) in
    Obj.repr(
# 33 "nanoParse.mly"
                                ( Letrec(_3,_5,_7) )
# 335 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Nano.expr) in
    Obj.repr(
# 34 "nanoParse.mly"
                                ( Fun(_2,_4) )
# 343 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Nano.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Nano.expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Nano.expr) in
    Obj.repr(
# 35 "nanoParse.mly"
                                ( If(_2,_4,_6) )
# 352 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 36 "nanoParse.mly"
                                (_1)
# 359 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 38 "nanoParse.mly"
                                ( Bin(_1,Or,_3) )
# 367 "nanoParse.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp2) in
    Obj.repr(
# 39 "nanoParse.mly"
                                ( _1 )
# 374 "nanoParse.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp2) in
    Obj.repr(
# 41 "nanoParse.mly"
                                ( Bin(_1,And,_3) )
# 382 "nanoParse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 42 "nanoParse.mly"
                                ( _1 )
# 389 "nanoParse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 44 "nanoParse.mly"
                                ( Bin(_1,Eq,_3) )
# 397 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 45 "nanoParse.mly"
                                ( Bin(_1,Lt,_3) )
# 405 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 46 "nanoParse.mly"
                                ( Bin(_1,Le,_3) )
# 413 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 47 "nanoParse.mly"
                                ( Bin(_1,Ne,_3) )
# 421 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'extra) in
    Obj.repr(
# 48 "nanoParse.mly"
                                 ( _1 )
# 428 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'extra) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'extra) in
    Obj.repr(
# 50 "nanoParse.mly"
                               ( Bin(_1,Cons,_3) )
# 436 "nanoParse.ml"
               : 'extra))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'extra) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'extra) in
    Obj.repr(
# 51 "nanoParse.mly"
                             ( Bin(_2,Cons,_4) )
# 444 "nanoParse.ml"
               : 'extra))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'extra) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'extra) in
    Obj.repr(
# 52 "nanoParse.mly"
                       ( Bin(_1,Cons,_3) )
# 452 "nanoParse.ml"
               : 'extra))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'extra) in
    Obj.repr(
# 53 "nanoParse.mly"
                  ( Bin(_1,Cons,NilExpr) )
# 459 "nanoParse.ml"
               : 'extra))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "nanoParse.mly"
                  ( NilExpr )
# 465 "nanoParse.ml"
               : 'extra))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'linked) in
    Obj.repr(
# 55 "nanoParse.mly"
                                ( _1 )
# 472 "nanoParse.ml"
               : 'extra))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "nanoParse.mly"
                    ( NilExpr )
# 478 "nanoParse.ml"
               : 'linked))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 58 "nanoParse.mly"
                        ( _1 )
# 485 "nanoParse.ml"
               : 'linked))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp4) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 60 "nanoParse.mly"
                                ( Bin(_1,Plus,_3) )
# 493 "nanoParse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp4) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 61 "nanoParse.mly"
                                ( Bin(_1,Minus,_3) )
# 501 "nanoParse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 62 "nanoParse.mly"
                                ( _1 )
# 508 "nanoParse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp5) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp6) in
    Obj.repr(
# 64 "nanoParse.mly"
                                ( Bin(_1,Mul,_3) )
# 516 "nanoParse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp5) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp6) in
    Obj.repr(
# 65 "nanoParse.mly"
                                ( Bin(_1,Div,_3) )
# 524 "nanoParse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp6) in
    Obj.repr(
# 66 "nanoParse.mly"
                                ( _1 )
# 531 "nanoParse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp6) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp7) in
    Obj.repr(
# 68 "nanoParse.mly"
                ( App(_1,_2) )
# 539 "nanoParse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp7) in
    Obj.repr(
# 69 "nanoParse.mly"
                ( _1 )
# 546 "nanoParse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Nano.expr) in
    Obj.repr(
# 71 "nanoParse.mly"
                               ( _2 )
# 553 "nanoParse.ml"
               : 'exp7))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 72 "nanoParse.mly"
                                ( Const _1 )
# 560 "nanoParse.ml"
               : 'exp7))
; (fun __caml_parser_env ->
    Obj.repr(
# 73 "nanoParse.mly"
                                 ( True )
# 566 "nanoParse.ml"
               : 'exp7))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "nanoParse.mly"
                                 ( False )
# 572 "nanoParse.ml"
               : 'exp7))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 75 "nanoParse.mly"
                                 ( Var(_1) )
# 579 "nanoParse.ml"
               : 'exp7))
(* Entry exp *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let exp (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Nano.expr)
