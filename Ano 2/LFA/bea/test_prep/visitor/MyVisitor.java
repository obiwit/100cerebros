// Generated from gramatica.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;

/**
 * This class provides an empty implementation of {@link gramaticaVisitor},
 * which can be extended to create a visitor which only needs to handle a subset
 * of the available methods.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */

import java.util.*;

public class MyVisitor extends gramaticaBaseVisitor<String> {

	Map<String, String> variables = new HashMap<>();
	Scanner sc = new Scanner(System.in);

	@Override public String visitMain(gramaticaParser.MainContext ctx) { 
		return visitChildren(ctx); 
	}

	@Override public String visitInstruction(gramaticaParser.InstructionContext ctx) { 
		return visitChildren(ctx);
	}
	
	@Override public String visitPrint(gramaticaParser.PrintContext ctx) {
		String s = visitChildren(ctx);
		System.out.println(s); 
		return s;
	}

	@Override public String visitAssignment(gramaticaParser.AssignmentContext ctx) { 
		String s = visitChildren(ctx);
		variables.put(ctx.ID().getText(), s);
		return s;
	}

	@Override public String visitFunction(gramaticaParser.FunctionContext ctx) {
		System.out.print(ctx.STRING().getText().replace("\"", ""));
		return sc.hasNextLine()? sc.nextLine() : "";
	}

	@Override public String visitReplace(gramaticaParser.ReplaceContext ctx) {
		return visit(ctx.orig).replace(visit(ctx.find), visit(ctx.repl));
	}

	@Override public String visitVariable(gramaticaParser.VariableContext ctx) {
		return variables.get(ctx.ID().getText());
	}

	@Override public String visitConcat(gramaticaParser.ConcatContext ctx) {
		return visit(ctx.s1)+visit(ctx.s2);
	}

	@Override public String visitLiteral(gramaticaParser.LiteralContext ctx) { 
		return ctx.STRING().getText().replace("\"", "");
	}
}
