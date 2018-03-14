// Generated from Numbers.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link NumbersParser}.
 */
public interface NumbersListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link NumbersParser#file}.
	 * @param ctx the parse tree
	 */
	void enterFile(NumbersParser.FileContext ctx);
	/**
	 * Exit a parse tree produced by {@link NumbersParser#file}.
	 * @param ctx the parse tree
	 */
	void exitFile(NumbersParser.FileContext ctx);
	/**
	 * Enter a parse tree produced by {@link NumbersParser#line}.
	 * @param ctx the parse tree
	 */
	void enterLine(NumbersParser.LineContext ctx);
	/**
	 * Exit a parse tree produced by {@link NumbersParser#line}.
	 * @param ctx the parse tree
	 */
	void exitLine(NumbersParser.LineContext ctx);
}