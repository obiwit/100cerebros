import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

import java.io.*;

public class gramaticaMain {
   public static void main(String[] args) throws Exception {
      // create a CharStream that reads from standard input:
      InputStream target = new FileInputStream(new File (args[0]));
      CharStream input = CharStreams.fromStream(target);
      // create a lexer that feeds off of input CharStream:
      gramaticaLexer lexer = new gramaticaLexer(input);
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
         MyVisitor visitor0 = new MyVisitor();
         visitor0.visit(tree);
      }
   }
}
