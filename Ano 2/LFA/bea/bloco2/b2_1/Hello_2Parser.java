// Generated from Hello_2.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class Hello_2Parser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, ID=3, WS=4;
	public static final int
		RULE_top = 0, RULE_greetings = 1, RULE_bye = 2, RULE_names = 3;
	public static final String[] ruleNames = {
		"top", "greetings", "bye", "names"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'hello'", "'bye'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, "ID", "WS"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Hello_2.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public Hello_2Parser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class TopContext extends ParserRuleContext {
		public List<GreetingsContext> greetings() {
			return getRuleContexts(GreetingsContext.class);
		}
		public GreetingsContext greetings(int i) {
			return getRuleContext(GreetingsContext.class,i);
		}
		public List<ByeContext> bye() {
			return getRuleContexts(ByeContext.class);
		}
		public ByeContext bye(int i) {
			return getRuleContext(ByeContext.class,i);
		}
		public TopContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_top; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof Hello_2Listener ) ((Hello_2Listener)listener).enterTop(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof Hello_2Listener ) ((Hello_2Listener)listener).exitTop(this);
		}
	}

	public final TopContext top() throws RecognitionException {
		TopContext _localctx = new TopContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_top);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(10); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(10);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case T__0:
					{
					setState(8);
					greetings();
					}
					break;
				case T__1:
					{
					setState(9);
					bye();
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				setState(12); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__0 || _la==T__1 );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class GreetingsContext extends ParserRuleContext {
		public NamesContext names;
		public NamesContext names() {
			return getRuleContext(NamesContext.class,0);
		}
		public GreetingsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_greetings; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof Hello_2Listener ) ((Hello_2Listener)listener).enterGreetings(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof Hello_2Listener ) ((Hello_2Listener)listener).exitGreetings(this);
		}
	}

	public final GreetingsContext greetings() throws RecognitionException {
		GreetingsContext _localctx = new GreetingsContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_greetings);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(14);
			match(T__0);
			setState(15);
			((GreetingsContext)_localctx).names = names();
			 System.out.println("Ola " + ((GreetingsContext)_localctx).names.list); 
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ByeContext extends ParserRuleContext {
		public NamesContext names;
		public NamesContext names() {
			return getRuleContext(NamesContext.class,0);
		}
		public ByeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bye; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof Hello_2Listener ) ((Hello_2Listener)listener).enterBye(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof Hello_2Listener ) ((Hello_2Listener)listener).exitBye(this);
		}
	}

	public final ByeContext bye() throws RecognitionException {
		ByeContext _localctx = new ByeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_bye);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(18);
			match(T__1);
			setState(19);
			((ByeContext)_localctx).names = names();
			 System.out.println("Adeus " + ((ByeContext)_localctx).names.list); 
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NamesContext extends ParserRuleContext {
		public String list = "";
		public Token ID;
		public List<TerminalNode> ID() { return getTokens(Hello_2Parser.ID); }
		public TerminalNode ID(int i) {
			return getToken(Hello_2Parser.ID, i);
		}
		public NamesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_names; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof Hello_2Listener ) ((Hello_2Listener)listener).enterNames(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof Hello_2Listener ) ((Hello_2Listener)listener).exitNames(this);
		}
	}

	public final NamesContext names() throws RecognitionException {
		NamesContext _localctx = new NamesContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_names);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(24); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(22);
				((NamesContext)_localctx).ID = match(ID);
				 ((NamesContext)_localctx).list =  _localctx.list + (_localctx.list.isEmpty() ? "" : ", ") + (((NamesContext)_localctx).ID!=null?((NamesContext)_localctx).ID.getText():null); 
				}
				}
				setState(26); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==ID );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\6\37\4\2\t\2\4\3"+
		"\t\3\4\4\t\4\4\5\t\5\3\2\3\2\6\2\r\n\2\r\2\16\2\16\3\3\3\3\3\3\3\3\3\4"+
		"\3\4\3\4\3\4\3\5\3\5\6\5\33\n\5\r\5\16\5\34\3\5\2\2\6\2\4\6\b\2\2\2\35"+
		"\2\f\3\2\2\2\4\20\3\2\2\2\6\24\3\2\2\2\b\32\3\2\2\2\n\r\5\4\3\2\13\r\5"+
		"\6\4\2\f\n\3\2\2\2\f\13\3\2\2\2\r\16\3\2\2\2\16\f\3\2\2\2\16\17\3\2\2"+
		"\2\17\3\3\2\2\2\20\21\7\3\2\2\21\22\5\b\5\2\22\23\b\3\1\2\23\5\3\2\2\2"+
		"\24\25\7\4\2\2\25\26\5\b\5\2\26\27\b\4\1\2\27\7\3\2\2\2\30\31\7\5\2\2"+
		"\31\33\b\5\1\2\32\30\3\2\2\2\33\34\3\2\2\2\34\32\3\2\2\2\34\35\3\2\2\2"+
		"\35\t\3\2\2\2\5\f\16\34";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}