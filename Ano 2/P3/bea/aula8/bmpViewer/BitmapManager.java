package aula8.bmpViewer;

import java.io.EOFException;
import java.io.RandomAccessFile;

import aula8.bmpViewer.BitmapImage.Bitmap;
import aula8.bmpViewer.BitmapImage.BitmapFileHeader;
import aula8.bmpViewer.BitmapImage.BitmapInfoHeader;

public class BitmapManager {

	public static void openImage(String filename) {
		try( RandomAccessFile imageFile = new RandomAccessFile(filename, "r") ) {
	
			// read headers
		    Bitmap.bitmapFileHeader = new BitmapFileHeader(imageFile);
		    Bitmap.bitmapInfoHeader = new BitmapInfoHeader(imageFile);
		    
		    // get image's pixel data
		    byte[] pixelData = new byte[((Bitmap.bitmapInfoHeader.width+3)*Bitmap.bitmapInfoHeader.height)*3]; 
		    int imageSize = 0;
		    try {
		    		imageSize = imageFile.read(pixelData);
	    		}
			catch (EOFException ex) {
		    		System.out.println(filename + " file sucessfully read.");
		    } 
			finally {
				Bitmap.data = new byte[imageSize];
				System.arraycopy(pixelData, 0, Bitmap.data, 0, imageSize);
			}
		} catch(Exception e) {
			System.err.println(e);
		}
	}
	
	
}
