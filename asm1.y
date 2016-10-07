

/*

  parser for asm with

  ldr -> 0x1
  str -> 0x2
  add -> 0x3



*/

%{

var ast = require('./ast'),

Program       = ast.Program,
AddStmt       = ast.AddStmt
LoadStmt      = ast.LoadStmt
StoreStmt     = ast.StoreStmt

;


1;



%}


%ebnf

%%

program
	:
	stmts* EOF
	 { return Program($1); }
	;


stmts
	: addStmt
	-> $1
	| loadStmt
	| storeStmt 
	;


addStmt
	: A REG ',' REG
	-> AddStmt($2, $4)
	;

loadStmt
	: L REG ',' HEX
	-> LoadStmt($1, $4)
	;

storeStmt
	: S REG 
	-> StoreStmt($1)
	;


%% 
