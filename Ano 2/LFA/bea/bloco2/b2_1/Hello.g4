grammar Hello;					// Define a grammar called Hello

r: greetings | valediction;

greetings : 'hello' ID+ { System.out.println("Ola " + $ID.text); } ;		// match keyword hello followed by an identifier
valediction: 'bye' ID+;

ID : [a-zA-Z]+ ;	 			// ID : [A-Za-z][A-Za-z0-9_]* ;
WS : [ \t\r\n]+ -> skip ;		// skip spaces, tabs, newlines, \r (Windows)


// cheatsheet
// ----------
// antlr4-build Hello.g4
// javac Hello*.java
// antlr4-test Hello r -tokens < p1.txt