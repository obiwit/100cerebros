// Generated from TestGrammar.g4 by ANTLR 4.7.1

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import org.antlr.v4.runtime.tree.ParseTreeProperty;
import java.util.*;

public class MyListener extends TestGrammarBaseListener {
	ParseTreeProperty<String> values = new ParseTreeProperty<>();
	Map<String, String> variables = new HashMap<>();

	@Override public void exitPrint(TestGrammarParser.PrintContext ctx) {
		System.out.println(values.get(ctx.string()));	
	}

	@Override public void exitAssignment(TestGrammarParser.AssignmentContext ctx) {
		variables.put(ctx.ID().getText(), values.get(ctx.string()));
	}

	@Override public void exitFunction(TestGrammarParser.FunctionContext ctx) {
		Scanner sc = new Scanner(System.in);
		System.out.print(values.get(ctx.string()));
		values.put(ctx, sc.hasNextLine()? sc.nextLine() : "");
	}

	@Override public void exitFunc(TestGrammarParser.FuncContext ctx) {
		values.put(ctx, values.get(ctx.function()));
	}

	@Override public void exitReplace(TestGrammarParser.ReplaceContext ctx) {
		values.put(ctx, values.get(ctx.string(0)).replace(values.get(ctx.string(1)), values.get(ctx.string(2))));	
	}

	@Override public void exitVariable(TestGrammarParser.VariableContext ctx) {
		values.put(ctx, variables.get(ctx.ID().getText()));
	}

	@Override public void exitConcat(TestGrammarParser.ConcatContext ctx) {
		values.put(ctx, values.get(ctx.string(0))+values.get(ctx.string(1)));	
	}

	@Override public void exitLiteral(TestGrammarParser.LiteralContext ctx) {
		values.put(ctx, ctx.STRING().getText().replace("\"", ""));
	}

}
