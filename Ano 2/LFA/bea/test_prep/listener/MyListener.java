// Generated from gramatica.g4 by ANTLR 4.7.1

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import java.util.*;
import org.antlr.v4.runtime.tree.*;

public class MyListener extends gramaticaBaseListener {

	ParseTreeProperty<String> nodes = new ParseTreeProperty<>();
	Map<String, String> variables = new HashMap<>();
	Scanner sc = new Scanner(System.in);

	@Override public void exitPrint(gramaticaParser.PrintContext ctx) {
			System.out.println(nodes.get(ctx.string()));
			
	}

	@Override public void exitAssignment(gramaticaParser.AssignmentContext ctx) {
		if(ctx.function() == null)
			variables.put(ctx.ID().getText(), nodes.get(ctx.string()));
		else  {
			System.out.print(ctx.function().STRING().getText().replace("\"", ""));
			String s = "";
			if (sc.hasNextLine())
				s = sc.nextLine();
			variables.put(ctx.ID().getText(), s);
		}
			
	}

	@Override public void exitConcat(gramaticaParser.ConcatContext ctx) {
		nodes.put(ctx, nodes.get(ctx.string(0)) + nodes.get(ctx.string(1)));
	}
	@Override public void exitLiteral(gramaticaParser.LiteralContext ctx) {
		nodes.put(ctx, ctx.STRING().getText().replace("\"", ""));
	}
	@Override public void exitVariable(gramaticaParser.VariableContext ctx) {
		nodes.put(ctx, variables.get(ctx.ID().getText()).replace("\"", ""));
	}
	@Override public void exitReplace(gramaticaParser.ReplaceContext ctx) {
		nodes.put(ctx, nodes.get(ctx.string(0)).replace(nodes.get(ctx.string(1)), nodes.get(ctx.string(2))));
	}

}
