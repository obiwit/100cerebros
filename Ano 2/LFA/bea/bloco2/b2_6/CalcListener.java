import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.runtime.tree.ParseTreeProperty;

import java.util.Map;
import java.util.HashMap;


public class CalcListener extends CalculatorBaseListener {
	
	ParseTreeProperty<String> values = new ParseTreeProperty<String>();
	protected Map<String, Double> symbols = new HashMap<String, Double>(); 

	@Override public void exitStat(CalculatorParser.StatContext ctx) {
		System.out.println(values.get(ctx.expr()));
	}

	// MUL_DIV
	@Override public void exitMulDiv(CalculatorParser.MulDivContext ctx) {
		values.put(ctx, values.get(ctx.expr(0)) + " " + values.get(ctx.expr(1)) + " " + ctx.op.getText());
	}

	// ADD_SUB
	@Override public void exitAddSub(CalculatorParser.AddSubContext ctx) {
		values.put(ctx, values.get(ctx.expr(0)) + " " + values.get(ctx.expr(1)) + " " + ctx.op.getText());
	}

	// PARENS
	@Override public void exitParens(CalculatorParser.ParensContext ctx) {
			values.put(ctx, values.get(ctx.expr()).toString());
	}
	
	// ASSIGN
	@Override public void exitAssign(CalculatorParser.AssignContext ctx) {
		//symbols.put(ctx.ID().getText(), values.get(ctx.expr()));
		System.out.println(symbols.get(ctx.ID().getText()));
	}

	// ID
	@Override public void exitId(CalculatorParser.IdContext ctx) {
		if (symbols.containsKey(ctx.ID().getText())) {
			values.put(ctx, symbols.get(ctx.ID().getText()).toString());
		} else {
			System.out.println("YOU FOOL! \"" + ctx.ID().getText() + "\" hasn't been defined yet!");
			System.exit(1);
		}
	}

	// INT
	@Override public void exitInt(CalculatorParser.IntContext ctx) {
		values.put(ctx, ctx.INT().getText());
	}

}