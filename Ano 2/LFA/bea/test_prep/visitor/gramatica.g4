grammar gramatica;

// parser
main: instruction* EOF;

instruction: print
	   | assignment
	   ;

print: 'print' string;

assignment: ID ':' (string | function);

function: 'input(' STRING ')';

string: s1=string '+' s2=string					#concat
      | '(' orig=string '/' find=string '/' repl=string ')'	#replace
      | STRING 							#literal
      | ID							#variable
      ;

// lexer
STRING: '"' [ a-zA-Z0-9.,?!:;]*  '"';
ID: [a-zA-Z] [a-zA-Z0-9]*;

COMMENT: '//' .*? '\n' -> skip;
WS: [ \t\r\n] -> skip;
