grammar TestGrammar;

// parser
main: instruction* EOF;

instruction
      : assignment
      | print
      ;

print: 'print' string;

assignment: ID ':' string;

function: 'input(' string ')';

string 
      : string '+' string			#concat
      | '(' string '/' string '/' string ')'	#replace
      | function				#func
      | STRING					#literal
      | ID					#variable
      ;


// lexer
STRING: '"' .*? '"';
ID: [a-zA-Z] [a-zA-Z0-9]*;

COMMENT: '//' .*? '/n' -> skip;
WS: [ \t\r\n] -> skip;

