grammar Calculator;

main: stat*; //((comment | operation | assign) NEWLINE)*;

stat: operation NEWLINE		#Operate
	| assignment NEWLINE	#Assign
	;

operation: operation '\\' operation	# Exclude
		 | operation '&' operation	# Intersect
		 | operation '+' operation	# Join
		 | '(' operation ')'		# Parens
		 | SET 						# Set
		 | VARIABLE					# Var
		 ;

assignment: VARIABLE '=' operation;

//comment: '--' .*?;


COMMENT: '--' .*? NEWLINE -> skip;

SET: '{' '}' 
   | '{' SET_ELEM (',' SET_ELEM)* '}';

SET_ELEM: WORD | NUM;

VARIABLE: [A-Z]+;
WORD: [a-z]+;

NUM: ('+'|'-')?[0-9]+('.'[0-9]+)?;

NEWLINE: ('\r')? '\n';
WS: [ \t]+ -> skip;