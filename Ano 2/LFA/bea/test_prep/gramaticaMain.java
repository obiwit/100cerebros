import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

import java.io.*;

public class gramaticaMain {
   public static void main(String[] args) throws Exception { /*
      // create a CharStream that reads from arg[0]
      InputStream in_stream = null;
      try
      { in_stream = new FileInputStream(new File(args[0])); }
      catch(FileNotFoundException e)
      { System.err.println("ERROR: reading number file!"); System.exit(1); }
      
      // create a CharStream that reads from in_stream:
      ANTLRInputStream input = new ANTLRInputStream(in_stream);*/

      InputStream target = new FileInputStream(new File(args[0]));
      CharStream stream = CharStreams.fromStream(target);
      // create a lexer that feeds off of input CharStream:
      gramaticaLexer lexer = new gramaticaLexer(stream);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      gramaticaParser parser = new gramaticaParser(tokens);
      // replace error listener:
      //parser.removeErrorListeners(); // remove ConsoleErrorListener
      //parser.addErrorListener(new ErrorHandlingListener());
      // begin parsing at main rule:
      ParseTree tree = parser.main();
      if (parser.getNumberOfSyntaxErrors() == 0) {
         // print LISP-style tree:
         // System.out.println(tree.toStringTree(parser));
         ParseTreeWalker walker = new ParseTreeWalker();
         MyListener listener0 = new MyListener();
         walker.walk(listener0, tree);
      }
	//in_stream.close();
   }
}
