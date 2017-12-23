package aula8.bmpViewer;

import java.awt.BorderLayout;
import java.awt.Frame;
import java.awt.Toolkit;
import java.net.MalformedURLException;
import java.util.List;

import javax.swing.ImageIcon;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JProgressBar;
import javax.swing.SwingUtilities;
import javax.swing.SwingWorker;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class RunWithSplashScreen {

	private JDialog dialog;
	private JFrame frame;
	private JProgressBar progress;

	protected void initUI() throws MalformedURLException {
		showSplashScreen();
		SwingWorker<Void, Integer> worker = new SwingWorker<Void, Integer>() {

			@Override
			protected Void doInBackground() throws Exception {
				for (int i = 0; i < 5; i++) {
					frame = new BMPViewer();
					//Thread.sleep(100);// Simulate loading
					publish(i);// Notify progress
				}
				return null;
			}

			@Override
			protected void process(List<Integer> chunks) {

				progress.setValue(chunks.get(chunks.size() - 1));
			}

			@Override
			protected void done() {
				showFrame();
				hideSplashScreen();
			}

		};
		worker.execute();
	}

	protected void hideSplashScreen() {
		dialog.setVisible(false);
		dialog.dispose();
	}

	protected void showSplashScreen() throws MalformedURLException {
		dialog = new JDialog((Frame) null);
		dialog.setModal(false);
		dialog.setUndecorated(true);
		JLabel background = new JLabel();
		background.setIcon( new ImageIcon(Toolkit.getDefaultToolkit().getImage(this.getClass().getResource("resources/splash.jpg"))));
		background.setLayout(new BorderLayout());
		dialog.add(background);

		progress = new JProgressBar();
		background.add(progress, BorderLayout.SOUTH);
		dialog.pack();
		dialog.setLocationRelativeTo(null);
		dialog.setVisible(true);
	}

	protected void showFrame() {
		frame.setVisible(true);
	}

	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException,
	UnsupportedLookAndFeelException {
		UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		SwingUtilities.invokeLater(new Runnable() {

			@Override
			public void run() {
				try {
					new RunWithSplashScreen().initUI();
				} catch (MalformedURLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
	}
}