grammar Numbers ;

file : line* EOF ;			// o nosso ficheiro  e composto por zero ou mais linhas
line : NUM '-' WORD NL ;	// cada linha tem a forma NUM - WORD e termina com uma mudanca de linha

NUM  : [0-9]+;			// cada NUM  e composto por 1 ou mais algarismos
WORD : [A-Za-z]+;		// cada WORD e composta por 1 ou mais letras
NL   : '\r'? '\n' ;
WS  : [ \t]+ -> skip;



