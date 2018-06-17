grammar gramatica;

// parser
main: instruction* EOF;

instruction: print
	   | assignment
	   ;

print: 'print' string;

assignment: ID ':' (string | function);

function: 'input(' STRING ')';

string: string '+' string			#concat
      | '(' string '/' string '/' string ')'	#replace
      | STRING 					#literal
      | ID					#variable
      ;

// lexer
STRING: '"' [ a-zA-Z0-9.,?!:;]*  '"';
ID: [a-zA-Z] [a-zA-Z0-9]*;

COMMENT: '//' .*? '\n' -> skip;
WS: [ \t\r\n] -> skip;
