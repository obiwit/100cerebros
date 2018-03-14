// Generated from Hello_2.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link Hello_2Parser}.
 */
public interface Hello_2Listener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link Hello_2Parser#top}.
	 * @param ctx the parse tree
	 */
	void enterTop(Hello_2Parser.TopContext ctx);
	/**
	 * Exit a parse tree produced by {@link Hello_2Parser#top}.
	 * @param ctx the parse tree
	 */
	void exitTop(Hello_2Parser.TopContext ctx);
	/**
	 * Enter a parse tree produced by {@link Hello_2Parser#greetings}.
	 * @param ctx the parse tree
	 */
	void enterGreetings(Hello_2Parser.GreetingsContext ctx);
	/**
	 * Exit a parse tree produced by {@link Hello_2Parser#greetings}.
	 * @param ctx the parse tree
	 */
	void exitGreetings(Hello_2Parser.GreetingsContext ctx);
	/**
	 * Enter a parse tree produced by {@link Hello_2Parser#bye}.
	 * @param ctx the parse tree
	 */
	void enterBye(Hello_2Parser.ByeContext ctx);
	/**
	 * Exit a parse tree produced by {@link Hello_2Parser#bye}.
	 * @param ctx the parse tree
	 */
	void exitBye(Hello_2Parser.ByeContext ctx);
	/**
	 * Enter a parse tree produced by {@link Hello_2Parser#names}.
	 * @param ctx the parse tree
	 */
	void enterNames(Hello_2Parser.NamesContext ctx);
	/**
	 * Exit a parse tree produced by {@link Hello_2Parser#names}.
	 * @param ctx the parse tree
	 */
	void exitNames(Hello_2Parser.NamesContext ctx);
}