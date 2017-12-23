package aula8.bmpViewer;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.Timer;
import javax.swing.UIManager;
import javax.swing.border.EmptyBorder;
import javax.swing.filechooser.FileNameExtensionFilter;

import aula8.bmpViewer.BitmapImage.Bitmap;


/**
 * BMPViewer 
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public final class BMPViewer extends JFrame implements ActionListener {

	// ---------------------------------------------------------
	// Serialization
	private static final long serialVersionUID = 1737528733812308816L;

	// Static Constants
	private static final String versionDate;
	private static final int  version;
	private static final int  defaultWindowWidth, defaultWindowHeight;		

	// ---------------------------------------------------------
	// Instance Fields

	// Graphic Components
	private JPanel contents;
	private JMenuBar menuBar;

	private JMenuItem helpButton, closeButton;												// Menu Buttons
	private JMenuItem openButton, saveButton, saveAsButton;									// File Operations Buttons
	private JMenuItem resizeButton, flipButton, flipVerticalButton, flipHorizontalButton;	// Features Buttons

	private JLabel currentFile;																// Status Bar info
	private Timer timer;

	private static JFileChooser fileChooser;

	// BMP Stuff TODO
	private File file;

	// ---------------------------------------------------------
	// Static constructor to init Static Constants
	static {
		versionDate			= "November 2017";	// internal info. can't be changed by users
		version 		    = 0;				// internal number. can't be changed by users
		defaultWindowWidth  = 1000;				// can be changed
		defaultWindowHeight = 700;				// can be changed
	}

	// ---------------------------------------------------------
	// Runs 
	public static void main(String[] args) {
		if (args.length == 1) {
			if (args[0].equalsIgnoreCase("-h") || args[0].equalsIgnoreCase("-help")) {
				System.out.println("Usage: java -jar BMPViewer.jar");
			}
		}
		else {
			run();
		}
	}

	// Constructor
	/**
	 * Create the panel.
	 */
	public BMPViewer() {
		System.out.println("Starting BMP Viewer...");

		/* Sets OS Look for the app, if possible. *****************************************
		 * If not possible, the program will quietly ignore the exception */
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (Exception e) {
		}

		// Sets Basic Window behaviors and properties *************************************
		// Center window
		Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
		int x = (screen.width-defaultWindowWidth)/2;
		int y = (screen.height-defaultWindowHeight)/2;
		setBounds(x,y,defaultWindowWidth,defaultWindowHeight);

		setTitle("BMP Viewer" + " v" + version);   
		setIconImage(Toolkit.getDefaultToolkit().getImage(BMPViewer.class.getResource("resources/icon.png")));  
		setSize(defaultWindowWidth, defaultWindowHeight);
		setBackground(Color.WHITE);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// Panel with contents ************************************************************
		contents = new JPanel();
		contents.setBorder(new EmptyBorder(5, 5, 5, 5));
		contents.setLayout(new BorderLayout(0, 0));
		setContentPane(contents);

		// Adds content to the panel ******************************************************
		//createPanelImage();
		createMenu();
		createStatusBar();

		// FIXME Initialize File Chooser
		long initialTime = System.currentTimeMillis();
		//fileChooser = new JFileChooser(new File("."));
		fileChooser = new JFileChooser();
		long finalTime = System.currentTimeMillis();
		System.out.println("Elapsed Time: " + ((finalTime - initialTime)/(10^3) + "s"));

	}

	// ---------------------------------------------------------
	// Creation of Graphic Contents
	/**
	 * JPanel para visualização gráfica de ficheiros BMP selecionados
	 */
	private void createPanelImage() {
		// TODO uncomment
		//JPanel panel = new JPanel();
		JPanel panel = new PanelImage(Bitmap.data, Bitmap.bitmapInfoHeader.width, Bitmap.bitmapInfoHeader.height);

		contents.add(panel, BorderLayout.CENTER);
	}

	/**
	 * Menu
	 */
	private void createMenu() {
		menuBar = new JMenuBar();
		menuBar.setLayout(new GridLayout(1,8));

		// Logo ******************************************************
		JMenuItem logo = new JMenuItem("BMP Viewer");	  

		logo.setToolTipText("BMP Viewer");      // Tooltip text  
		logo.setIcon(new ImageIcon(             // Icon
				BMPViewer.class.getResource("resources/icon_small.png")));  
		//logo.setEnabled(false);
		menuBar.add(logo);

		// File Operations and Features Buttons **********************
		addFileOperationsButtons();
		addFeaturesButtons();

		// Close button **********************************************
		closeButton = new JMenuItem("Close"); 	  
		closeButton.addActionListener(this);				// Dialog box when pressed
		closeButton.setToolTipText("Close");				// Tooltip text   
		closeButton.setIcon(new ImageIcon(					// Icon
				BMPViewer.class.getResource("resources/ic_action_cancel.png")));  

		menuBar.add(closeButton);

		// About button ***********************************************
		helpButton = new JMenuItem("About");	 
		helpButton.addActionListener(this);					// Dialog box when pressed
		helpButton.setToolTipText("About this program");    // Tooltip text   
		helpButton.setIcon(new ImageIcon(				    // Icon
				BMPViewer.class.getResource("resources/ic_action_about.png")));  

		menuBar.add(helpButton);

		// Update JFrame ******************************************************
		//contents.add(menuBar, BorderLayout.NORTH);
		setJMenuBar(menuBar);
	}

	/**
	 */
	private void addFileOperationsButtons() {
		// Open button ******************************************************
		openButton = new JMenuItem("Open"); 	  
		openButton.addActionListener(this);						// Dialog box when pressed 
		openButton.setToolTipText("Open a BMP File");			// ToolTip Text   
		openButton.setIcon(new ImageIcon(						// Icon
				BMPViewer.class.getResource("resources/ic_action_open.png")));  

		menuBar.add(openButton);

		// Save button ******************************************************
		saveButton = new JMenuItem("Save"); 	  
		saveButton.addActionListener(this);  					// Dialog box when pressed 
		saveButton.setToolTipText("Save Current File");			// ToolTip Text   
		saveButton.setIcon(new ImageIcon(						// Icon
				BMPViewer.class.getResource("resources/ic_action_save.png")));  

		menuBar.add(saveButton);

		// Save as button ******************************************************
		saveAsButton = new JMenuItem("Save As"); 	  
		saveAsButton.addActionListener(this);  					// Dialog box when pressed 
		saveAsButton.setToolTipText("Save As");					// ToolTip Text   
		saveAsButton.setIcon(new ImageIcon(						// Icon
				BMPViewer.class.getResource("resources/ic_action_saveAs.png")));  

		menuBar.add(saveAsButton);
	}

	/**
	 */
	private void addFeaturesButtons() {
		// Flip Sub Menu ******************************************************
		menuBar.add(createFlipSubMenu());

		// Resize Button ******************************************************
		resizeButton = new JMenuItem("Resize"); 	  
		resizeButton.addActionListener(this);  					// Dialog box when pressed 
		resizeButton.setToolTipText("Resize");					// ToolTip Text   
		resizeButton.setIcon(new ImageIcon(						// Icon
				BMPViewer.class.getResource("resources/ic_action_resize.png")));  

		menuBar.add(resizeButton);

	}

	/**
	 * Settings Sub menu
	 */
	private JMenu createFlipSubMenu() {
		JMenu flipSubMenu = new JMenu("Flip");	   
		flipSubMenu.setToolTipText("Flip");									// Tooltip text   
		flipSubMenu.setIcon(new ImageIcon(									// Icon
				BMPViewer.class.getResource("resources/ic_action_expand.png")));  

		// **************************************
		/*
		// Flip Button
		flipButton = new JMenuItem("Flip");	
		flipButton.addActionListener(this);									// Dialog box when pressed
		flipButton.setToolTipText("Flip");									// Tooltip text  
		//flipVerticalButton.setIcon(new ImageIcon(							// Icon
		//		BMPViewer.class.getResource("resources/ic_action_flipVertical.png")));  

		flipSubMenu.add(flipButton);
		 */

		// **************************************
		// Flip Vertical Button
		flipVerticalButton = new JMenuItem("Flip Vertically");	
		flipVerticalButton.addActionListener(this);							// Dialog box when pressed
		flipVerticalButton.setToolTipText("Flip Vertically");				// Tooltip text  
		//flipVerticalButton.setIcon(new ImageIcon(							// Icon
		//		BMPViewer.class.getResource("resources/ic_action_flipVertical.png")));  

		flipSubMenu.add(flipVerticalButton);

		// **************************************
		// Flip Horizontal Button
		flipHorizontalButton  = new JMenuItem("Flip Horizontally"); 
		flipHorizontalButton.addActionListener(this);		   				// Dialog box when pressed
		flipHorizontalButton.setToolTipText("Flip Horizontally");		   	// Tooltip text 
		//flipHorizontal.setIcon(new ImageIcon(				   				// Icon
		//		BMPViewer.class.getResource("resources/ic_action_flipHorizontal.png")));  

		flipSubMenu.add(flipHorizontalButton);

		return flipSubMenu;
	}

	// --------------------------------------
	/**
	 * Status Bar
	 */
	private void createStatusBar() {
		JPanel statusBar = new JPanel();
		statusBar.setLayout(new GridLayout(1,2));
		statusBar.setPreferredSize(new Dimension(getWidth(), 20));

		currentFile = new JLabel("File currently opened: No File");		

		JLabel authorsLabel = new JLabel("v" + version + " (" + "\n" + versionDate + ")");  
		authorsLabel.setHorizontalAlignment(SwingConstants.RIGHT);

		timer = new Timer(500, this);				// updates periodically	the text of the labels

		timer.setRepeats(true);
		timer.setCoalesce(true);
		timer.setInitialDelay(0);
		timer.start();

		statusBar.add(currentFile);
		statusBar.add(authorsLabel);

		contents.add(statusBar, BorderLayout.SOUTH);
	}

	// -----------------------------------------------------------
	// Events Handler
	@Override
	public void actionPerformed(ActionEvent e) {
		// ------------------------------------
		// Menu Buttons

		// Help Button
		if (e.getSource() == helpButton) {
			JOptionPane.showMessageDialog(getContentPane(), ("BMP Viewer\nVersion v" + version + "\n" + versionDate), helpButton.getText(), 1, new ImageIcon(BMPViewer.class.getResource("resources/icon_small.png"))); 
		}

		// Close Button
		if (e.getSource() == closeButton) {
			int option = JOptionPane.showConfirmDialog(getContentPane(), "Do you want to close the app?", closeButton.getText(), JOptionPane.YES_NO_OPTION);  
			if (option == 0) {
				System.out.println("Closing BMP Viewer (user request)");
				System.exit(0);
			}
		}

		// ------------------------------------
		// File Operations Buttons

		// Open Button
		if (e.getSource() == openButton) {
			// Open dialog box
			// Example from https://docs.oracle.com/javase/7/docs/api/javax/swing/JFileChooser.html

			fileChooser.setFileFilter(new FileNameExtensionFilter("BMP Files", "bmp"));			// filter (only shows BMP Files)

			int returnVal = fileChooser.showOpenDialog(contents);
			if (returnVal == JFileChooser.APPROVE_OPTION) {
				// check chosen file
				file = fileChooser.getSelectedFile();
				String filename = file.getName();
				System.err.println("Opening: " + filename + ".");
				
//				String[] splitFilename = filename.split(".");
//				if (splitFilename[splitFilename.length - 1] != "bmp") {
//					System.err.println("Invalid file! It's not a BMP!");
//					return;
//				}
				
				// manage bitmap
				BitmapManager.openImage(filename);
				createPanelImage();
				
			} else {
				System.err.println("Open command cancelled by user.");
			}
		}

		// Save Button
		if (e.getSource() == saveButton) {
			// TODO Save
			JOptionPane.showMessageDialog(getContentPane(), "Pressed " + e.getActionCommand() + " Button"); 	// debug
		}

		// Save As Button
		if (e.getSource() == saveAsButton) {
			// Save dialog box
			// Example from https://docs.oracle.com/javase/7/docs/api/javax/swing/JFileChooser.html

			fileChooser.setFileFilter(new FileNameExtensionFilter("BMP Files", "bmp"));			// filter (only shows BMP Files)

			if (fileChooser.showSaveDialog(contents) == JFileChooser.APPROVE_OPTION) {
				File fileToSave = fileChooser.getSelectedFile();

				// TODO verifications: if file exists, if can't be read, if is a directory,...
				if(!fileToSave.getAbsolutePath().endsWith(".bmp")){		// automatically adds .bmp extension if not given by the user
					fileToSave = new File(fileToSave + ".bmp");
				}

				try {
					if (fileToSave.createNewFile()) ;
					// TODO save info
				} catch (IOException e1) {
					System.err.println("I/O Error while saving " + fileToSave.getAbsolutePath());
				}
				System.err.println("Saving: " + fileToSave.getAbsolutePath());
			} else {
				System.err.println("Save command cancelled by user.");
			}
		}

		// ------------------------------------
		// Features Buttons

		// Resize Button
		if (e.getSource() == resizeButton) {
			// TODO Resize
			JOptionPane.showMessageDialog(getContentPane(), "Pressed " + e.getActionCommand() + " Button"); 	// debug
		}

		/*
		// Flip Button
		if (e.getSource() == flipButton) {
			// TODO Flip 
			JOptionPane.showMessageDialog(getContentPane(), "Pressed " + e.getActionCommand() + " Button"); 	// debug
		}
		 */

		// Flip Vertical Button
		if (e.getSource() == flipVerticalButton) {
			// TODO Flip Vertical
			JOptionPane.showMessageDialog(getContentPane(), "Pressed " + e.getActionCommand() + " Button"); 	// debug
		}

		// Flip Horizontal Button
		if (e.getSource() == flipHorizontalButton) {
			// TODO Flip Horizontal
			JOptionPane.showMessageDialog(getContentPane(), "Pressed " + e.getActionCommand() + " Button"); 	// debug
		}

		if ( e.getActionCommand() != null) System.out.println("Pressed " + e.getActionCommand() + " Button");		// debug

		// ------------------------------------
		// Timer
		if (e.getSource() == timer) {
			if (file != null) currentFile.setText("File currently opened: " + file.getPath());
			else currentFile.setText("File currently opened: No File");
		}

	}

	// -----------------------------------------------------------
	// Run/rerun viewer
	/**
	 * Start/Restart App
	 */
	private static void run() {
		BMPViewer viewer = new BMPViewer();
		viewer.setVisible(true);
	}

	/**
	 * Restart app
	 */
	@SuppressWarnings("unused")
	private void restart() {
		dispose();				// closes current JFrame
		run();
	}

	/**
	 * @return the versionDate
	 */
	public static String getVersionDate() {
		return versionDate;
	}

	/**
	 * @return the version
	 */
	public static int getVersion() {
		return version;
	}


}