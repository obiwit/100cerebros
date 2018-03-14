// Generated from Numbers.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class NumbersLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, NUM=2, WORD=3, NL=4, WS=5;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "NUM", "WORD", "NL", "WS"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'-'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, "NUM", "WORD", "NL", "WS"
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


	public NumbersLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Numbers.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\7%\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\3\2\3\2\3\3\6\3\21\n\3\r\3\16\3\22\3\4"+
		"\6\4\26\n\4\r\4\16\4\27\3\5\5\5\33\n\5\3\5\3\5\3\6\6\6 \n\6\r\6\16\6!"+
		"\3\6\3\6\2\2\7\3\3\5\4\7\5\t\6\13\7\3\2\5\3\2\62;\4\2C\\c|\4\2\13\13\""+
		"\"\2(\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\3\r"+
		"\3\2\2\2\5\20\3\2\2\2\7\25\3\2\2\2\t\32\3\2\2\2\13\37\3\2\2\2\r\16\7/"+
		"\2\2\16\4\3\2\2\2\17\21\t\2\2\2\20\17\3\2\2\2\21\22\3\2\2\2\22\20\3\2"+
		"\2\2\22\23\3\2\2\2\23\6\3\2\2\2\24\26\t\3\2\2\25\24\3\2\2\2\26\27\3\2"+
		"\2\2\27\25\3\2\2\2\27\30\3\2\2\2\30\b\3\2\2\2\31\33\7\17\2\2\32\31\3\2"+
		"\2\2\32\33\3\2\2\2\33\34\3\2\2\2\34\35\7\f\2\2\35\n\3\2\2\2\36 \t\4\2"+
		"\2\37\36\3\2\2\2 !\3\2\2\2!\37\3\2\2\2!\"\3\2\2\2\"#\3\2\2\2#$\b\6\2\2"+
		"$\f\3\2\2\2\7\2\22\27\32!\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}