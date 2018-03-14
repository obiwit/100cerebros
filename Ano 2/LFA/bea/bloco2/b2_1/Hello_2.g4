grammar Hello_2;

top: (greetings | bye)+;

greetings: 'hello' names { System.out.println("Ola " + $names.list); } ;
bye: 'bye' names { System.out.println("Adeus " + $names.list); } ;

names returns[String list=""] : ( ID { $list = $list + ($list.isEmpty() ? "" : ", ") + $ID.text; } )+;

ID : [A-Za-z][A-Za-z0-9_]* ;
WS : [ \t\n\r]+ -> skip ;