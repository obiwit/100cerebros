package aula8.whoWantsToBeAMillionaire;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JProgressBar;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.border.EmptyBorder;

/**
 * Who Wants To Be a Millionaire?
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class MillionaireGame extends JFrame {

	private static final long serialVersionUID = -6029239122432431928L;

	// Static Constants
	private static final int version;
	private static final int defaultWindowWidth, defaultWindowHeight;	
	
	// Other Config Variables
	private static String defaultConfigFile = "millionaireConfig.txt";
	private boolean fiftyHelpIsActive;
	private int currentQuestion;
	private Player player;
	private Quiz quiz;

	// ---------------------------------------------------------
	// Instance Fields
	private JPanel window;	
	
	// ---------------------------------------------------------
	// Static constructor to init Static Constants
	static {
		version = 2;			
		defaultWindowWidth = 1000;
		defaultWindowHeight = 550;
	}

	// ---------------------------------------------------------
	// Runs the game
	public static void main(String[] args) {
		if (args.length == 1) {
			if (args[0].equalsIgnoreCase("-h") || args[0].equalsIgnoreCase("-help")) {
				System.out.println("Usage: java -jar MillionaireGame.jar <configFilePath>");
				return;
			}
			else {
				defaultConfigFile = args[0];
			}
		}
		// Start the game
		startGame();
	}

	public MillionaireGame() {
		System.out.println("Starting 'Who Wants To Be a Millionaire'...");
		

		
		// Configure the game's starting settings
		quiz = new Quiz(Paths.get(MillionaireGame.class.getResource("resources/" +  defaultConfigFile).getPath()));
		fiftyHelpIsActive = false;
		currentQuestion = 0;
		player = new Player();
		

		/* Sets OS Look for the app, if possible. 
		 * If not possible, the program will quietly ignore the exception */
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (Exception e) {
		}

		// Sets Basic Window behaviors and properties *************************************
		setTitle("Who Wants To Be a Millionaire?" + " (v" + version + ")");   
		setSize(defaultWindowWidth, defaultWindowHeight);
		setMinimumSize(getSize());
		setBackground(Color.WHITE);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// Panel with contents ************************************************************
		window = new JPanel();
		window.setBorder(new EmptyBorder(5, 5, 5, 5));
		window.setLayout(new BorderLayout(0, 0));
		setContentPane(window);

		// Adds content to the frame ******************************************************
		createQuestionPanel(); 
		createAnswersPanel(false); // false makes all 4 possible answers clickable
		createStatusBar();
		
		//EXTRAS
		//createTimer();
	}
	// ---------------------------------------------------------
	// Creation of Graphic Contents
	/**
	 * JPanel that will contain each question, and its image
	 */
	private void createQuestionPanel() {
		JPanel questionsPanel = new JPanel();
		questionsPanel.setLayout(new BorderLayout(0, 0));
		
		JPanel question = new JPanel();
		question.setLayout(new GridLayout(1, 2));
		
		// add question's image to sub-panel
		try {
			BufferedImage image = ImageIO.read(new File(MillionaireGame.class.getResource("resources/" +  
										quiz.getQuestion(currentQuestion).imagePath().toString().split("/")[1]).toURI()));
			question.add(new JLabel(new ImageIcon(image))); //.getScaledInstance(510, 357, Image.SCALE_FAST)
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		// add question text to sub-panel
		JLabel q = new JLabel("<html>"+ quiz.getQuestion(currentQuestion).question() +"</html>", SwingConstants.CENTER);
		q.setBorder(new EmptyBorder(0,20,0,20));
		q.setFont(new Font(q.getFont().getName(), Font.PLAIN, 30));
		question.add(q);
		
		// add question and helps to the panel
		questionsPanel.add(question, BorderLayout.CENTER);
		questionsPanel.add(createHelpPanel(), BorderLayout.SOUTH);
		
		// add panel to the window
		window.add(questionsPanel, BorderLayout.PAGE_START);
	}
	
	/**
	 * JPanel that will contain the three possible helps
	 */
	private JPanel createHelpPanel() {
		JPanel helpPanel = new JPanel();
		helpPanel.setLayout(new GridLayout(1, 3));
		
		for (Help h : Help.values()) {
			
			JButton helpBtn = new JButton(h.getPrompt());
			helpBtn.addActionListener(new ActionListener(){
				@Override
				public void actionPerformed(ActionEvent e) {
					player.useHelp(h);
					showHelp(h);
				}
			});

			// if help was used, make it unclickable
			if (!player.isAvailable(h)) {
				helpBtn.setEnabled(false);
			}
			helpPanel.add(helpBtn);
			
		}	
		return helpPanel;
	}
	
	/**
	 * JPanel that will contain every possible answer (for each question)
	 * 
	 * @param help50 If true, signals that only two answers should be clickable, a result of using the 50/50 help.
	 */
	private void createAnswersPanel(boolean help50) {
		JPanel answersPanel = new JPanel();
		answersPanel.setLayout(new GridLayout(2, 2));
		
		int wrongAnswersShown = 0;
		
		// add answers text to sub-panel
		for (String answer : quiz.getQuestion(currentQuestion).answers()) {
			JButton button = new JButton(answer);
			button.addActionListener(new ActionListener(){
				@Override
				public void actionPerformed(ActionEvent e) {
					// if answer was right
					if (quiz.getQuestion(currentQuestion).isTheCorrectAnswer(button.getText())) {
						// update current question
						player.addCorrectAnswer();
						currentQuestion++;
						
						// check if player won game
						if (player.wonGame()) {
							finishGame();
							
						} else {
							// else, show next question
							fiftyHelpIsActive = false;
							window.removeAll();
							createQuestionPanel();
							createAnswersPanel(false); // false makes all 4 possible answers clickable
							createStatusBar();
							window.validate();
							window.repaint();
						}
					}
					else {
						// end game
						finishGame();
					}
			
				}
			});

			// if help50 is true, limit clickable buttons to 2
			if (!quiz.getQuestion(currentQuestion).isTheCorrectAnswer(button.getText())) {
				if (help50 && wrongAnswersShown > 0) {
					button.setEnabled(false);
				} else {
					wrongAnswersShown++;
				}
			}
			answersPanel.add(button);
		}
		
		// add panel to the window
		window.add(answersPanel, BorderLayout.CENTER);
	}
	
	
	/**
	 * JPanel that will contain a progress bar
	 */
	private void createStatusBar() {
		
		// create progress bar
		JProgressBar progressBar = new JProgressBar(0, quiz.totalQuestions());
		progressBar.setValue(player.getRightAnswers());
		
		// add panel to the window
		window.add(progressBar, BorderLayout.SOUTH);
	}
	/**
	 * Shows one of the possibles Helps to the user
	 */
	private void showHelp(Help h) {
		
		if(!h.equals(Help.Fifty)) {
			
			String helpText = "<html>";
			String[] answers = quiz.getQuestion(currentQuestion).answers();
			Question q = quiz.getQuestion(currentQuestion);
			
			if(h.equals(Help.Audience)) { // generate four answers
				int totalCertainty = 0;
				for(int i = 0; i < answers.length - 1; i++) {
					
					int answerCertainty = calculateAnswerCertainty(q, answers[i]);
					totalCertainty += answerCertainty;
					
					helpText += "<p><b>" + answers[i] + "</b> - <i>" + answerCertainty + "%</i> certainty</p>";
				}
				// guarantee total certainty is 100%
				helpText += "<p><b>" + answers[answers.length - 1] + "</b> - <i>" + (100 - totalCertainty) + "%</i> certainty</p>";
				
			} else { // Call - generate two answers
				boolean wrongAnswerShown = false; // the call help must display the correct answer and a wrong one
				
				for(int i = 0; i < answers.length; i++) {
					
					if (q.isTheCorrectAnswer(answers[i])) {
						helpText += "<p><b>" + answers[i] + "</b> - <i>" + calculateAnswerCertainty(q, answers[i]) + "%</i> certainty</p>";
					} else if(!wrongAnswerShown) {
						wrongAnswerShown = true;
						helpText += "<p><b>" + answers[i] + "</b> - <i>" + calculateAnswerCertainty(q, answers[i]) + "%</i> certainty</p>";
					}
				}
			}
			helpText += "</html>";
			JOptionPane.showConfirmDialog( getContentPane(), helpText, 
										  	  h.toString(), JOptionPane.DEFAULT_OPTION); 
		} else {
			fiftyHelpIsActive = true;
		}
		
		// update game to reflect unusable helps panel
		window.removeAll();
		createQuestionPanel();
		createAnswersPanel(h.equals(Help.Fifty) || fiftyHelpIsActive);
		createStatusBar();
		window.validate();
		window.repaint();
	}
	
	private int calculateAnswerCertainty(Question q, String answer) {
		int difficulty = q.difficulty();
		
		switch (difficulty) {
		case 0:
			if(q.isTheCorrectAnswer(answer)) 
				return 50 + (int)(Math.random()*15);
			return 10 + (int)(Math.random()*10);
		case 1:
			if(q.isTheCorrectAnswer(answer)) 
				return 40 + (int)(Math.random()*10);
			return 20 + (int)(Math.random()*8);
		default:
			if(q.isTheCorrectAnswer(answer)) 
				return 25 + (int)(Math.random()*5);
			return 22 + (int)(Math.random()*10);
		}
	}
		
	// ---------------------------------------------------------
	// Other Logic
	/**
	 * Starts the game
	 */
	private static void startGame() {
		MillionaireGame game = new MillionaireGame();	// creates new Game
		game.setVisible(true);
	}

	/**
	 * Restarts the game
	 */
	private void restartGame() {
		dispose();				// closes current JFrame
		startGame();
	}
	
	/**
	 * Handles the game's end
	 */
	private void finishGame() {
		Toolkit.getDefaultToolkit().beep();				// alert sound
		int option = JOptionPane.showConfirmDialog(		// message
				getContentPane(), "End of Game. \nYou won $" + player.getMoneyEarned() + ", and correctly answered " +
				currentQuestion + " questions!\nDo you want to start a new game?", 
				(player.getRightAnswers() == quiz.totalQuestions()) ? "You won it all" : "End of Game", JOptionPane.YES_NO_OPTION);    

		if (option == 0) restartGame();		//restarts the game
	}
}

/**
 * Auxiliary class, that represents the Player.
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
class Player {
	// static fields
	private static int[] possibleEarnings = {25, 50, 125, 250, 500, 750, 1500, 2500, 5000, 10000, 16000, 32000, 64000, 125000, 250000};
	
	// fields
	private int moneyEarned;
	private int rightAnswers;
	private boolean wonGame;
	private List<Help> availableHelp;
	
	// constructor
	Player() {
		moneyEarned = 0;
		rightAnswers = 1;
		wonGame = false;
		availableHelp = new ArrayList<>();
		availableHelp.add(Help.Call);
		availableHelp.add(Help.Fifty);
		availableHelp.add(Help.Audience);
	}
	
	// methods
	/**
	 * Update user's info to reflect that the user has answered the question correctly
	 */
	public void addCorrectAnswer() {
		if (rightAnswers == possibleEarnings.length) {
			wonGame = true;
			return;
		}
		moneyEarned = possibleEarnings[rightAnswers++];
	}
	public void useHelp(Help help) {
		if (availableHelp.contains(help)) {
			availableHelp.remove(help);
		}
	}
	
	// getters
	public String[] getAvailableHelp() {
		return (String[]) availableHelp.toArray();
	}
	public boolean isAvailable(Help help) {
		return availableHelp.contains(help);
	}
	public int getMoneyEarned() {
		return moneyEarned;
	}
	
	public int getRightAnswers() {
		return rightAnswers;
	}
	
	public boolean wonGame() {
		return wonGame;
	}
}

/**
 * Auxiliary class, that contains every question along with its image and answers.
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
class Quiz {
	// fields
	private int totalQuestions;
	private Question[] questions;
	
	// constructor
	Quiz(Path path) {
		
		try {
			totalQuestions = (int) Files.lines(path).count();
			questions = new Question[totalQuestions];
			
			Scanner input = new Scanner( new File( path.toString() ));
			
			for(int i = 0; i < totalQuestions; i++) {
				questions[i] = new Question(input.nextLine());
			}
			
			input.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// methods
	public Question getQuestion(int questionIndex) {
		if (questionIndex >= totalQuestions) throw new IllegalArgumentException();
		return questions[questionIndex];
	}
	public int totalQuestions() {
		return totalQuestions;
	}
}
/**
 * Auxiliary class, that represents a single question;
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
class Question{

	// fields
	private int difficulty;
	private Path imgPath;
	private String question, correctAnswer;
	private String[] answers;
	
	// constructor
	public Question(String line) {
		
		String[] questionData = line.split("&&");
		if (questionData.length < 7) throw new IllegalArgumentException();
		
		answers = new String[4];
		answers[0] = questionData[2];
		answers[1] = questionData[3];
		answers[2] = questionData[4];
		answers[3] = questionData[5];
		correctAnswer = answers[0].trim().toLowerCase();

		question = questionData[1];
		difficulty = Integer.parseInt(questionData[6]);
		
		String filePath = questionData[0].replaceAll(":", "/");
		imgPath = Paths.get(filePath);
	}
	
	// methods
	public boolean isTheCorrectAnswer(String s) {
		return correctAnswer.equals(s.trim().toLowerCase());
	}
	
	// getters
	public int difficulty() {
		return difficulty;
	}
	public Path imagePath() {
		return imgPath;
	}
	public String question() {
		return question;
	}
	public String correctAnswer() {
		return answers[0];
	}
	public String[] answers() {
		// order the array to guarantee the first answer isn't always the right one
		Arrays.sort(answers); 
		return answers;
	}
}
/**
 * Auxiliary class, that represents the different helps a player can use.
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
enum Help {
	Fifty("50/50"), Audience("Ask the audience for help"), Call("Call a friend");
	
	 private final String prompt;      // Private variable
	
	Help	(String s) {     // Constructor
		this.prompt = s;
	}
   
	String getPrompt() {              // Getter
		return prompt;
	}
}