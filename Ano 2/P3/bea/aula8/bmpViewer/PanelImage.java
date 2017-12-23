package aula8.bmpViewer;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.image.BufferedImage;

import javax.swing.JPanel;

/**
 * PanelImage
 * 
 */

public class PanelImage extends JPanel{

	private static final long serialVersionUID = -1609629865760254517L;

	BufferedImage bi;

	/**
	 * @param pixels - Byte Array with Pixels
	 * @param w - Image Width (columns)
	 * @param h - Image Heigth (row)
	 */
	PanelImage(byte[] pixels, int w, int h){
		bi = new BufferedImage(w, h, BufferedImage.TYPE_4BYTE_ABGR);
		bi.setRGB(0, 0, w, h, byteArrayToIntArray(pixels), 0, w);
		this.setPreferredSize(new Dimension(w, h));
	}

	@Override
	public void paintComponent(Graphics g){
		g.drawImage(bi, 0, 0, this);
	}

	@SuppressWarnings("static-method")
	private int[] byteArrayToIntArray(byte[] arr){
		int[] ret = new int[arr.length / 4];
		for (int i = 0; i < ret.length; i++)
			ret [i] = (arr[i*4 + 3]<<24 | (arr[i*4 + 2]&0xff)<<16 |
					(arr[i*4 + 1]&0xff)<<8 | (arr[i*4]&0xff));
		return ret;
	}
}