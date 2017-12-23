package aula7;

import java.io.*;
import aula7.prob2.Bitmap;
import aula7.prob2.BitmapFileHeader;
import aula7.prob2.BitmapInfoHeader;
import aula7.prob2.BitmapUtils;

/**
 * Prob2
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob2 {

	public static void main(String[] args) {
		
		try( RandomAccessFile imageFile = new RandomAccessFile("image.bmp", "r") ) {

			// read headers
		    Bitmap.bitmapFileHeader = new BitmapFileHeader(imageFile);
		    Bitmap.bitmapInfoHeader = new BitmapInfoHeader(imageFile);
		    
		    // print bmp info
		    System.out.println(Bitmap.bitmapFileHeader + "\n");
		    System.out.println(Bitmap.bitmapInfoHeader + "\n");

		    
		    // -----------------------------------------------------------------------------------------------------
		    // get image's pixel data
		    byte[] pixelData = new byte[((Bitmap.bitmapInfoHeader.width+3)*Bitmap.bitmapInfoHeader.height)*3]; 
		    int imageSize = 0;
		    try {
		    		imageSize = imageFile.read(pixelData);
	    		}
			catch (EOFException ex) {
		    		System.out.println("image.bmp file sucessfully read.");
		    } 
			finally {
				Bitmap.data = new byte[imageSize];
				System.arraycopy(pixelData, 0, Bitmap.data, 0, imageSize);
			}
		    
			
			
		    // -----------------------------------------------------------------------------------------------------
		    // save pixel data to a .raw file
		    try( RandomAccessFile rawFile = new RandomAccessFile("image.raw", "rw") ) {
    				rawFile.write(Bitmap.data);
		    		System.out.println("image.raw file sucessfully created.");
		    }
		    catch (Exception e) {
		    		e.printStackTrace();
		    }
		    
		    

		    // -----------------------------------------------------------------------------------------------------
		    // create smaller (x0.25) bmp file
			
		    try( RandomAccessFile smallImg = new RandomAccessFile("smallerImage.bmp", "rw") ) {

		    		BitmapUtils.createSmaller(smallImg);
		    		
	    			System.out.println("smallerImage.bmp file sucessfully created.");
		    }
		    catch (Exception e) {
		    		e.printStackTrace();
		    }

		    
		    // -----------------------------------------------------------------------------------------------------
		    // create flipped bmp file
		    try( RandomAccessFile flippedImg = new RandomAccessFile("flippedImage.bmp", "rw") ) {
		    	
		    		BitmapUtils.createFlip(flippedImg);
		    		
	    			System.out.println("flippedImage.bmp file sucessfully created.");
		    }
		    catch (Exception e) {
		    		e.printStackTrace();
		    }
		    
		    
		    // -----------------------------------------------------------------------------------------------------
		    // create horizontally only flipped bmp file
		    try( RandomAccessFile flippedImg = new RandomAccessFile("horizontalFlipImage.bmp", "rw") ) {
		    	
		    		BitmapUtils.createHorizontalFlip(flippedImg);
		    		
	    			System.out.println("horizontalFlipImage.bmp file sucessfully created.");
		    }
		    catch (Exception e) {
		    		e.printStackTrace();
		    }
		    
		    
		    // -----------------------------------------------------------------------------------------------------
		    // create vertically only flipped bmp file
		    try( RandomAccessFile flippedImg = new RandomAccessFile("verticalFlipImage.bmp", "rw") ) {
		    	
		    		BitmapUtils.createVerticalFlip(flippedImg);
		    		
	    			System.out.println("verticalFlipImage.bmp file sucessfully created.");
		    }
		    catch (Exception e) {
		    		e.printStackTrace();
		    }
		    
		    
		    // -----------------------------------------------------------------------------------------------------
		    // create bmp file copy
		    try( RandomAccessFile copyImg = new RandomAccessFile("imageCopy.bmp", "rw") ) {
		    	
		    		BitmapUtils.createCopy(copyImg);
		    		
	    			System.out.println("imageCopy.bmp file sucessfully created.");
		    }
		    catch (Exception e) {
		    		e.printStackTrace();
		    }
		    
		} catch(Exception e) {
			System.err.println(e);
		}

	}

}
