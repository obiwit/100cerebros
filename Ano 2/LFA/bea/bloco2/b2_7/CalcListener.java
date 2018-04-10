// Generated from Calculator.g4 by ANTLR 4.7.1

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.runtime.tree.ParseTreeProperty;

import java.util.*;
// import java.util.Map;
// import java.util.Arrays;
// import java.util.HashMap;

/**
 * This class provides an empty implementation of {@link CalculatorListener},
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
public class CalcListener extends CalculatorBaseListener {
	
	ParseTreeProperty<String[]> values = new ParseTreeProperty<>(); 
	protected Map<String, String[]> variables = new HashMap<String, String[]>();


	@Override public void exitMain(CalculatorParser.MainContext ctx) {
		// System.out.println("Goodbye my user, you have been the one, you have been the one to use me!");
		// System.out.println("I'm so useful, baby! I'm so! I'm so! So useful baby!");
	}

	@Override public void exitOperate(CalculatorParser.OperateContext ctx) { 
		
		String[] setVals = values.get(ctx.operation());
		printSetFromArray(setVals);
	}
	@Override public void exitAssign(CalculatorParser.AssignContext ctx) {
		
		String[] setVals = values.get(ctx.assignment());
		printSetFromArray(setVals);
	}
	@Override public void exitIntersect(CalculatorParser.IntersectContext ctx) {

		String[] a1 = values.get(ctx.operation(0));
		String[] a2 = values.get(ctx.operation(1));

		Set<String> s1 = new HashSet<String>(Arrays.asList(a1));
		Set<String> s2 = new HashSet<String>(Arrays.asList(a2));
		s1.retainAll(s2);

		String[] result = s1.toArray(new String[0]);
		values.put(ctx, result);

	}
	@Override public void exitSet(CalculatorParser.SetContext ctx) {
		values.put(ctx, ctx.SET().getText().substring(1, ctx.SET().getText().length()-1).split(","));
	}
	@Override public void exitExclude(CalculatorParser.ExcludeContext ctx) {

		String[] a1 = values.get(ctx.operation(0));
		String[] a2 = values.get(ctx.operation(1));

		List<String> list = new ArrayList<String>(Arrays.asList(a1));
		list.removeAll(Arrays.asList(a2));
		String[] result = list.toArray(new String[0]);

		values.put(ctx, result);
	}
	@Override public void exitVar(CalculatorParser.VarContext ctx) {
		values.put(ctx, variables.get(ctx.VARIABLE().getText()));
	}
	@Override public void exitParens(CalculatorParser.ParensContext ctx) {
		values.put(ctx,  values.get(ctx.operation()));
	}
	@Override public void exitJoin(CalculatorParser.JoinContext ctx) {
		String[] a1 = values.get(ctx.operation(0));
		String[] a2 = values.get(ctx.operation(1));

		String[] result = new String[a1.length + a2.length];
		System.arraycopy(a1, 0, result, 0, a1.length);
		System.arraycopy(a2, 0, result, a1.length, a2.length);

		values.put(ctx, result);
	}

	@Override public void exitAssignment(CalculatorParser.AssignmentContext ctx) {
		variables.put(ctx.VARIABLE().getText(), values.get(ctx.operation()));
		values.put(ctx, values.get(ctx.operation()));
	}

	private void printSetFromArray(String[] setVals) {
		String temp = "{";
		for(int i =0; i < setVals.length; i++)
			temp += setVals[i] + ",";
		temp = temp.substring(0, temp.length() -1) + "}";

		printResult((setVals.length != 0)? temp : "{}");
	}

	private void printResult(String txt) {
		System.out.print("\033[0;1m" + "result: " + "\033[0m");
		System.out.println(txt);
	}
}