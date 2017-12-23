package aula7.prob2;

import java.io.IOException;
import java.io.RandomAccessFile;


/**
 * BitmapInfoHeader
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class BitmapInfoHeader {
	public int size; 				// the size of this header (40 bytes)
	public int width;				// the bitmap width in pixels
	public int height;				// the bitmap height in pixels
	public short planes;				// the number of color planes being used. Must be set to 1 
	public short bitCount;			// the number of bits per pixel (color depth) - 1, 4, 8, 16, 24, 32 
	public int compression;			// the compression method being used
	public int sizeImage;			// the image size. This is the size of the raw bitmap data
	public int xPelsPerMeter;		// the horizontal resolution of the image (pixel per meter)
	public int yPelsPerMeter;		// the vertical resolution of the image (pixel per meter)
	public int clrUsed;				// the number of colors in the color palette,
									// or 0 to default to 2n
	public int clrImportant; 		// the number of important colors used,
									// or 0 when every color is important
    
    public BitmapInfoHeader(RandomAccessFile imageFile) { 
		try {
			size = Integer.reverseBytes(imageFile.readInt());
			width = Math.abs(Integer.reverseBytes(imageFile.readInt()));
			height = Math.abs(Integer.reverseBytes(imageFile.readInt()));
			planes = Short.reverseBytes(imageFile.readShort());
			bitCount = Short.reverseBytes(imageFile.readShort());
			compression = Integer.reverseBytes(imageFile.readInt());
			sizeImage = Integer.reverseBytes(imageFile.readInt());
			xPelsPerMeter = Integer.reverseBytes(imageFile.readInt());
			yPelsPerMeter = Integer.reverseBytes(imageFile.readInt());
			clrUsed = Integer.reverseBytes(imageFile.readInt());
			clrImportant = Integer.reverseBytes(imageFile.readInt());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public String toString() {
		return "BitmapInfoHeader \n\tSize: " + size + "\n\tWidth: " + width + "\n\tHeight: " + height + "\n\tPlanes: " + planes
				+ "\n\tBitCount: " + bitCount + "\n\tCompression: " + compression + "\n\tSizeImage: " + sizeImage
				+ "\n\tXPelsPerMeter: " + xPelsPerMeter + "\n\tYPelsPerMeter: " + yPelsPerMeter + "\n\tClrUsed: " + clrUsed
				+ "\n\tclrImportant: " + clrImportant;
	}
    
    

}
