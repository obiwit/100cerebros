package aula8.TicTacToe;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JToggleButton;
import javax.swing.SwingConstants;
import javax.swing.Timer;
import javax.swing.UIManager;
import javax.swing.border.EmptyBorder;


/**
 * TicTacToe
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

// Exit Status : 0 - Exits using Menu; 1 - Exits after a game ended
// Improvements to consider Refactor code: create public void actionPerformed(ActionEvent e) method

public final class TicTacToe extends JFrame {

	// ---------------------------------------------------------
	// Serialization
	private static final long serialVersionUID = 4107057061062985963L;

	// Static Constants
	private static final int  version;
	private static final int  defaultWindowSize;		
	private static final int  maximumDimension;

	private static final int  defaultDimension; 		
	private static final User defaultFirstUser;	

	// ---------------------------------------------------------
	// Instance Fields
	private JPanel contents;
	private JPanel boardPanel;

	// Game Constants
	private final long initialTime;
	private final int  dimension;		
	private final User firstUser;

	// Game Logic
	private User currentUser; 
	private User[][] board;  
	private int countPlays;
	private Direction winDirection;

	// ---------------------------------------------------------
	// Static constructor to init Static Constants
	static {
		version 		  = 4;		// internal number. can't be changed by users
		defaultWindowSize = 600;	// can be changed
		maximumDimension  = 9;		// should not be changed (maximumDimension > 9 might lead to an unstable/unusable game)
		defaultDimension  = 3;		// can be changed but must respect maximumDimension and > 1
		defaultFirstUser  = User.X; // can be changed 
	}

	// ---------------------------------------------------------
	// Runs 
	public static void main(String[] args) {
		if (args.length == 2) {
			play(args[0], args[1]);
		}

		else if (args.length == 1) {
			if (args[0].equalsIgnoreCase("-h") || args[0].equalsIgnoreCase("-help")) {
				System.out.println("Usage: java -jar TicTacToe.jar <first user (O/X)> <board dimension>");
			}
			else {
				play(args[0]);
			}
		}

		else {
			play();
		}

	}

	// Constructor
	/**
	 * Create the panel.
	 */
	public TicTacToe(String argFirstUser, String argDimension) {
		System.out.println("Starting Tic Tac Toe...");

		/* Sets OS Look for the app, if possible. 
		 * If not possible, the program will quietly ignore the exception */
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (Exception e) {
		}

		// Sets Basic Window behaviors and properties *************************************
		setTitle("Tic Tac Toe" + " v" + version);   
		setIconImage(Toolkit.getDefaultToolkit().getImage(TicTacToe.class.getResource("resources/tic-tac-toe-icons.png")));  
		setSize(defaultWindowSize, defaultWindowSize);
		setBackground(Color.WHITE);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// Panel with contents ************************************************************
		contents = new JPanel();
		contents.setBorder(new EmptyBorder(5, 5, 5, 5));
		contents.setLayout(new BorderLayout(0, 0));
		setContentPane(contents);

		// Game Logic *********************************************************************
		// Set dimension value
		int dimensionToSet;
		try {
			dimensionToSet = Integer.parseInt(argDimension);
			if (dimensionToSet > maximumDimension || dimensionToSet < 2) throw new IllegalArgumentException();
		} catch (IllegalArgumentException e) {
			// catches both IllegalArgumentException and NumberFormatException 
			System.err.println("Invalid or null value for dimension. Default value " + defaultDimension + " will be used");
			dimensionToSet = defaultDimension;
		}
		dimension = dimensionToSet;

		// Set first user

		if (argFirstUser.equalsIgnoreCase("x") || argFirstUser.equalsIgnoreCase("o"))    
			firstUser = User.valueOf(argFirstUser);
		else {
			System.err.println("Invalid or null value for first user. Default value " + defaultFirstUser + " will be used");
			firstUser = defaultFirstUser;
		}

		currentUser = firstUser;
		countPlays  = 0;
		initialTime = System.currentTimeMillis();
		board 		= new User[dimension][dimension];

		// Adds content to the panel ******************************************************
		createBoard();
		createMenu();
		createStatusBar();
	}

	/**
	 * Create the panel with default values.
	 */
	public TicTacToe() {
		this("", "");   
	}

	/**
	 * Create the panel with default values.
	 */
	public TicTacToe(String argFirstUser) {
		this(argFirstUser, "");  
	}

	// ---------------------------------------------------------
	// Creation of Graphic Contents
	/**
	 * JPanel com o layout GridLayout para dispor essa casa no tabuleiro do jogo.
	 */
	private void createBoard() {

		boardPanel = new JPanel();
		boardPanel.setLayout(new GridLayout(dimension,dimension));

		// Buttons
		for (int i = 0; i < dimension; i++) {				// lines
			for (int j = 0; j < dimension; j++) {			// cols
				JToggleButton b = new JToggleButton();

				// workaround for variables inside an inner class (ActionListener) needing to be final
				final Integer iForActionListener = new Integer(i);			
				final Integer jForActionListener = new Integer(j);

				b.addActionListener(new ActionListener() {
					@Override
					public void actionPerformed(ActionEvent e) {
						// Update the button properties
						b.setText(currentUser.toString());
						b.setEnabled(false);
						b.setFont(new Font(b.getFont().getName(), Font.PLAIN, 40));

						// Update the game logic
						setBoardUser(iForActionListener, jForActionListener, currentUser);		// board

						if (currentUser.equals(User.X)) currentUser = User.O;				// currentUser
						//else if (currentUser.equals(User.O)) currentUser = User.X;
						else currentUser = User.X;

						countPlays++;									// count number of plays

						// Verifies if the game has ended
						if (isFinished()) finishGame();

					}
				});

				boardPanel.add(b);
			}
		}

		contents.add(boardPanel, BorderLayout.CENTER);
	}

	/**
	 * Menu
	 */
	private void createMenu() {
		JMenuBar menuBar = new JMenuBar();
		menuBar.setLayout(new GridLayout(1,5));

		// Logo ******************************************************
		JMenuItem logo = new JMenuItem("Tic Tac Toe");	  
		logo.setToolTipText("Tic Tac Toe");                		// Tooltip text  
		logo.setIcon(new ImageIcon(                        		// Icon
				TicTacToe.class.getResource("resources/tic-tac-toe-icons-small.png")));  
		logo.setEnabled(false);
		menuBar.add(logo);

		// New game button ******************************************************
		JMenuItem newGameButton = new JMenuItem("New Game"); 	  
		newGameButton.setToolTipText("Start a New Game");		// ToolTip Text   
		newGameButton.setIcon(new ImageIcon(					// Icon
				TicTacToe.class.getResource("resources/ic_action_new.png")));  

		newGameButton.addActionListener(new ActionListener() {  // Dialog box when pressed 
			@Override
			public void actionPerformed(ActionEvent e) {
				int option = JOptionPane.showConfirmDialog(getContentPane(), "Do you want to start a new game?", newGameButton.getText(), JOptionPane.YES_NO_OPTION);  
				if (option == 0) restartGame(firstUser.toString(), String.valueOf(dimension));
			}});

		menuBar.add(newGameButton);

		// Close button ******************************************************
		JMenuItem closeButton = new JMenuItem("Close"); 	  
		closeButton.setToolTipText("Close the Game");			// Tooltip text   
		closeButton.setIcon(new ImageIcon(						// Icon
				TicTacToe.class.getResource("resources/ic_action_cancel.png")));  

		closeButton.addActionListener(new ActionListener() {	// Dialog box when pressed
			@Override
			public void actionPerformed(ActionEvent e) {
				int option = JOptionPane.showConfirmDialog(getContentPane(), "Do you want to close the game?", closeButton.getText(), JOptionPane.YES_NO_OPTION);  
				if (option == 0) {
					System.out.println("Closing Tic Tac Toe (user request)");
					System.exit(0);
				}
			}});

		menuBar.add(closeButton);

		// Settings submenu ******************************************************
		JMenu settingsSubMenu = createSettingsSubMenu();
		menuBar.add(settingsSubMenu);

		// About button ******************************************************
		JMenuItem helpButton = new JMenuItem("About");	 
		helpButton.setToolTipText("About this program");        // Tooltip text   
		helpButton.setIcon(new ImageIcon(						// Icon
				TicTacToe.class.getResource("resources/ic_action_about.png")));  

		helpButton.addActionListener(new ActionListener() {		// Dialog box when pressed
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(getContentPane(), ("Simple version of Tic Tac Toe\nVersion v" + version + "\nNovember 2017"), helpButton.getText(), 1, new ImageIcon(TicTacToe.class.getResource("resources/tic-tac-toe-icons-small.png"))); 
			}
		});

		menuBar.add(helpButton);

		// Update JFrame ******************************************************
		//contents.add(menuBar, BorderLayout.NORTH);
		setJMenuBar(menuBar);

	}

	/**
	 * Settings Sub menu
	 */
	private JMenu createSettingsSubMenu() {

		//Locale.setDefault();

		JMenu optionsSubMenu = new JMenu("Settings");	   
		optionsSubMenu.setToolTipText("Settings");		// Tooltip text   
		optionsSubMenu.setIcon(new ImageIcon(			// Icon
				TicTacToe.class.getResource("resources/ic_action_settings.png")));  

		// **************************************
		// Change Dimensions Button
		JMenuItem setDimensionsButton = new JMenuItem("Change Dimensions");	
		setDimensionsButton.setToolTipText("Change Dimensions of the board");	// Tooltip text  
		setDimensionsButton.setIcon(new ImageIcon(								// Icon
				TicTacToe.class.getResource("resources/ic_action_select_all.png")));  

		setDimensionsButton.addActionListener(new ActionListener() {			// Dialog box when pressed
			@Override
			public void actionPerformed(ActionEvent e) {
				int numOfDimensions = maximumDimension - 1;
				Integer[] possibleValues = new Integer[numOfDimensions];
				for (int i = 0; i < numOfDimensions; i++) {
					possibleValues[i] = i + 2; 
				}
				Integer option = (Integer) (JOptionPane.showInputDialog(getContentPane(), "Please insert the new dimensions of the board:", "Change Dimensions", JOptionPane.QUESTION_MESSAGE, null, possibleValues, String.valueOf(dimension)));
				if (option != null) restartGame(firstUser.toString(), option.toString());   
			}
		});		

		optionsSubMenu.add(setDimensionsButton);

		// **************************************
		// Change First User Button
		JMenuItem setFirstUserButton  = new JMenuItem("Change First Player"); 
		setFirstUserButton.setToolTipText("Change First Player");		   		// Tooltip text 
		setFirstUserButton.setIcon(new ImageIcon(				   				// Icon
				TicTacToe.class.getResource("resources/ic_action_cc_bcc.png")));  

		setFirstUserButton.addActionListener(new ActionListener() {		   		// Dialog box when pressed
			@Override
			public void actionPerformed(ActionEvent e) {
				Object option = JOptionPane.showInputDialog(getContentPane(), "Please select the first player:", "Change First Player", JOptionPane.QUESTION_MESSAGE, null, User.values(), firstUser);
				if (option != null) restartGame(option.toString(), String.valueOf(dimension));   
			}
		});	

		optionsSubMenu.add(setFirstUserButton);

		return optionsSubMenu;
	}

	/**
	 * Status Bar
	 */
	private void createStatusBar() {
		JPanel statusBar = new JPanel();
		statusBar.setLayout(new GridLayout(1,3));
		statusBar.setPreferredSize(new Dimension(getWidth(), 20));

		JLabel currentUserLabel = new JLabel();
		currentUserLabel.setHorizontalAlignment(SwingConstants.CENTER);		// centers the text

		JLabel timeLabel = new JLabel();
		timeLabel.setHorizontalAlignment(SwingConstants.CENTER);

		JLabel authorsLabel = new JLabel("v" + version + " (" + "\nNovember 2017" + ")");  
		authorsLabel.setHorizontalAlignment(SwingConstants.CENTER);

		Timer timer = new Timer(500, new ActionListener() {					// updates periodically	the text of the labels
			@Override
			public void actionPerformed(ActionEvent e) {
				timeLabel.setText("Playing for " + ((System.currentTimeMillis() - initialTime)/(1000*60)) + " minutes");   
				currentUserLabel.setText("Current Player: " + currentUser );	// or update when button is pressed (but currentUserLabel would have to be a class field)   
			}
		});

		timer.setRepeats(true);
		timer.setCoalesce(true);
		timer.setInitialDelay(0);
		timer.start();

		statusBar.add(currentUserLabel);
		statusBar.add(timeLabel);
		statusBar.add(authorsLabel);


		contents.add(statusBar, BorderLayout.SOUTH);
	}

	// -----------------------------------------------------------
	// Game Logic : Game State (Start/Restart Game)
	/**
	 * Start/Restart Game with custom values for first user and dimension
	 * @param argFirstUser
	 * @param argDimension
	 */
	private static void play(String argFirstUser, String argDimension) {
		TicTacToe jogo = new TicTacToe(argFirstUser, argDimension);
		jogo.setVisible(true);
	}

	/**
	 * Start/Restart Game with custom value for first user and default value for dimension
	 * @param argFirstUser
	 */
	private static void play(String argFirstUser) {
		TicTacToe jogo = new TicTacToe(argFirstUser);
		jogo.setVisible(true);
	}

	/**
	 * Start/Restart Game with default values for first user and dimension
	 */
	private static void play() {
		TicTacToe jogo = new TicTacToe();	// creates new Game
		jogo.setVisible(true);
	}

	/**
	 * Restart game with default values for first user and dimension
	 */
	@SuppressWarnings("unused")
	private void restartGame() {
		dispose();				// closes current JFrame
		play();
	}

	/**
	 * Restart game with given values for first user and dimension
	 */
	private void restartGame(String argFirstUser, String argDimension) {
		dispose();				// closes current JFrame
		play(argFirstUser, argDimension);
	}

	// -----------------------------------------------------------
	// Getter and Setter to the board
	private User getBoardUser(int lin, int col) {
		return board[lin][col];
	}

	private void setBoardUser(int lin, int col, User user) {
		this.board[lin][col] = user;
	}	

	// -----------------------------------------------------------
	// Game Logic : Finish Game
	private boolean isFinished() {
		return countPlays == dimension * dimension || searchWin(User.X) || searchWin(User.O);
	}

	private void finishGame() {
		Toolkit.getDefaultToolkit().beep();				// alert sound
		int option = JOptionPane.showConfirmDialog(		// message
				getContentPane(), "End of Game. \nResult: " + getWinner() + "\nDo you want to start a new game?", "End of Game", JOptionPane.YES_NO_OPTION);    

		if (option == 0) restartGame(firstUser.toString(), String.valueOf(dimension));		//restarts the game, keeping the settings
		else disableNonPlayedButtons();			//doesn't restart the game, allowing the user to see the endBoard but blocks more plays
		/*
		else {
			System.out.println("Closing Tic Tac Toe (game ended)");
			System.exit(1);
		}
		 */
	}

	private void disableNonPlayedButtons() {
		Component[] buttons = boardPanel.getComponents();
		for (Component c : buttons) 
			if (c.isEnabled()) c.setEnabled(false);	

	}

	private String getWinner() {
		// for both users
		if (searchWin(User.O)) return User.O.toString() + " won (direction " + winDirection + ")";   
		if (searchWin(User.X)) return User.X.toString() + " won (direction " + winDirection + ")";   
		return "Tie";  
	}

	// Auxiliary methods to find the winner
	private boolean searchWin (User user) {
		for (int i = 0; i < dimension; i++) {				// lines
			for (int j = 0; j < dimension; j++) {			// col
				for (Direction d: Direction.values()) {
					if (searchWin(user, 0, i, j, d)) {
						winDirection = d;
						return true;
					}
				}
			}
		}
		return false;
	}

	private boolean searchWin (User user, int currentScore, int line, int col, Direction direction) {
		return searchWin(user, currentScore, line, col, direction.getIncrementLine(),  direction.getIncrementCol()) == dimension;
	}

	private int searchWin (User user, int currentScore, int line, int col, int incrementLine, int incrementCol) {
		// Terminal Conditions:

		// 1. No play in the board position
		if (getBoardUser(line, col) == null) return 0; 

		// 2. Play from another user in the board position
		if (!getBoardUser(line, col).equals(user)) return 0; 

		// 3. About to be outside the limits of the board
		if (line + incrementLine < 0 || col + incrementCol < 0 || line + incrementLine > dimension - 1 || col + incrementCol > dimension - 1) return 1;	 

		// 4. Found win
		if (currentScore == dimension) 	return currentScore;	

		return searchWin(user, currentScore, line + incrementLine, col + incrementCol, incrementLine, incrementCol) + 1;

	}
}

// ------------------------------------------------------------------------------------------------------------
/**
 * User<p>
 * Represents the User (X or O)
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
enum User {
	X, O;
}

/**
 * Direction<p>
 * 	VERTICAL	| incrementLine = +1 ; incrementCol =  0 <p>
 * 	HORIZONTAL	| incrementLine =  0 ; incrementCol = +1 <p>
 *  DIAGONAL	| incrementLine = +1 ; incrementCol = +1 <p>
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
enum Direction {
	// Enum values
	Vertical(1, 0), Horizontal(0, 1), Diagonal(1, 1), AntiDiagonal(1, -1) {
		@Override 
		public String toString() {
			return "Diagonal";
		}
	};

	// Instance Field
	private final int incrementLine, incrementCol;

	// Constructor
	/**
	 * 
	 * Constructor
	 * @param incrementLine
	 * @param incrementCol
	 */
	Direction (int incrementLine, int incrementCol) {
		this.incrementLine = incrementLine; 
		this.incrementCol  = incrementCol;
	}

	// Getters
	/**
	 * @return the incrementLine
	 */
	public int getIncrementLine() {
		return incrementLine;
	}

	/**
	 * @return the incrementCol
	 */
	public int getIncrementCol() {
		return incrementCol;
	}

}