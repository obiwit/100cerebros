package aula7.prob2;

import java.io.IOException;
import java.io.RandomAccessFile;


/**
 * BitmapUtils
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class BitmapUtils {
	
	static int imgWidth = Bitmap.data.length/Bitmap.bitmapInfoHeader.height; // accounts for 3 bytes per pixel + padding
	static int noPaddingImgWidth = Bitmap.bitmapInfoHeader.width*3;
	
	public static void createSmaller(RandomAccessFile smaller) throws IOException {
		
		writeBitmapHeaders(smaller, Bitmap.data.length/4 + 54, Bitmap.bitmapInfoHeader.width/2, Bitmap.bitmapInfoHeader.height/2);
		
		// for each line of the image
		for(int j  = 0; j < Bitmap.bitmapInfoHeader.height; j += 2) {
	    		// add a pixel row
	    		int i;
	    		for (i = 0; i < Bitmap.bitmapInfoHeader.width*3/2; i += 3) {
	    			smaller.write(Bitmap.data[(j * imgWidth) + i*2]);
	    			smaller.write(Bitmap.data[(j * imgWidth) + (i*2 + 1)]);
	    			smaller.write(Bitmap.data[(j * imgWidth) + (i*2 + 2)]);
	    		}
	    		// padding
	    		for (int k = 0; k < i%4; k++) {
	    			smaller.write((byte) 0);
	    		}
	    	}
	}
	
	public static void createFlip(RandomAccessFile flip) throws IOException {
		writeBitmapHeaders(flip, Bitmap.bitmapFileHeader.size, Bitmap.bitmapInfoHeader.height, Bitmap.bitmapInfoHeader.width);
		
		// for each row of the original image
		for (int i = 0; i < imgWidth; i += 3) {
			int bitsInLine = 0;
			
	    		// for each column of the original image
	    		for(int j  = 0; j < Bitmap.bitmapInfoHeader.height; j++) {
	    			
		    		// write one line on the flipped image
	    			flip.write(Bitmap.data[(j * imgWidth) + i]);
	    			flip.write(Bitmap.data[(j * imgWidth) + i + 1]);
	    			flip.write(Bitmap.data[(j * imgWidth) + i + 2]);
		    		bitsInLine += 3;
		    	}
	
	    		// padding
	    		for (int k = 0; k < bitsInLine%4; k++) {
	    			flip.write((byte) 0);
	    		}
		}
	}
	
	public static void createHorizontalFlip(RandomAccessFile horizFlip) throws IOException {
		writeBitmapHeaders(horizFlip);
		
		// for each column of the original image
		for(int j  = 0; j < Bitmap.bitmapInfoHeader.height; j++) {
			int bitsInLine = 0;
			
	    		// for each row of the original image
	    		for (int i = noPaddingImgWidth - 3; i > -1; i -= 3) {
	    			
		    		// write one line on the flipped image
	    			horizFlip.write(Bitmap.data[(j * imgWidth) + i]);
	    			horizFlip.write(Bitmap.data[(j * imgWidth) + i + 1]);
	    			horizFlip.write(Bitmap.data[(j * imgWidth) + i + 2]);
		    		bitsInLine += 3;
		    	}
	
	    		// padding
	    		for (int k = 0; k < bitsInLine%4; k++) {
	    			horizFlip.write((byte) 0);
	    		}
		}
	}
	
	public static void createVerticalFlip(RandomAccessFile vertFlip) throws IOException {
		writeBitmapHeaders(vertFlip);
		
		
		// for each column of the original image
		for(int j = Bitmap.bitmapInfoHeader.height - 1; j >= 0 ; j--) {

			int bitsInLine = 0;    	
			
    			// for each row of the original image
	    		for (int i = 0; i < imgWidth; i += 3) {
		    		
	    			// write one line on the flipped image
	    			vertFlip.write(Bitmap.data[(j * imgWidth) + i]);
	    			vertFlip.write(Bitmap.data[(j * imgWidth) + i + 1]);
	    			vertFlip.write(Bitmap.data[(j * imgWidth) + i + 2]);
		    		bitsInLine += 3;
	    		
		    	}
	    		
	    		// padding
	    		for (int k = 0; k < bitsInLine%4; k++) {
	    			vertFlip.write((byte) 0);
	    		}

		}
	}
	
	public static void createCopy(RandomAccessFile copy) throws IOException {
		writeBitmapHeaders(copy);
		copy.write(Bitmap.data);	
	}

	public static void writeBitmapHeaders(RandomAccessFile img, int newSize, int newWidth, int newHeight) throws IOException {

		img.writeShort(Short.reverseBytes(Bitmap.bitmapFileHeader.type));
		img.writeInt(Integer.reverseBytes(newSize));
		img.writeShort(Short.reverseBytes(Bitmap.bitmapFileHeader.reserved1));
		img.writeShort(Short.reverseBytes(Bitmap.bitmapFileHeader.reserved2));
		img.writeInt(Integer.reverseBytes(Bitmap.bitmapFileHeader.offBits));
		
		img.writeInt(Integer.reverseBytes(Bitmap.bitmapInfoHeader.size));
		img.writeInt(Integer.reverseBytes(newWidth));
		img.writeInt(Integer.reverseBytes((-1)*newHeight));
		img.writeShort(Short.reverseBytes(Bitmap.bitmapInfoHeader.planes));
		img.writeShort(Short.reverseBytes(Bitmap.bitmapInfoHeader.bitCount));
		img.writeInt(Integer.reverseBytes(Bitmap.bitmapInfoHeader.compression));
		img.writeInt(Integer.reverseBytes(Bitmap.bitmapInfoHeader.sizeImage));
		img.writeInt(Integer.reverseBytes(Bitmap.bitmapInfoHeader.xPelsPerMeter));
		img.writeInt(Integer.reverseBytes(Bitmap.bitmapInfoHeader.yPelsPerMeter));
		img.writeInt(Integer.reverseBytes(Bitmap.bitmapInfoHeader.clrUsed));
		img.writeInt(Integer.reverseBytes(Bitmap.bitmapInfoHeader.clrImportant));
	}
	
	public static void writeBitmapHeaders(RandomAccessFile img) throws IOException {
		writeBitmapHeaders(img, Bitmap.bitmapFileHeader.size, Bitmap.bitmapInfoHeader.width, Bitmap.bitmapInfoHeader.height);
	}

}
