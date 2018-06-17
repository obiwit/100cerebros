import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

import java.io.*;

public class TestGrammarMain {
   public static void main(String[] args) throws Exception {
      // create a CharStream that reads from standard input:
      //CharStream input = CharStreams.fromStream(System.in);
      
      InputStream stream = new FileInputStream(new File(args[0]));
      CharStream input = CharStreams.fromStream(stream);

      // create a lexer that feeds off of input CharStream:
      TestGrammarLexer lexer = new TestGrammarLexer(input);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      TestGrammarParser parser = new TestGrammarParser(tokens);
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
   }
}
