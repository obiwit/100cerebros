package aula7.prob2;

import java.io.IOException;
import java.io.RandomAccessFile;


/**
 * BitmapFileHeader
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class BitmapFileHeader {
	public short type;       // must be 'BM' to declare a bmp-file
	public int size;         // specifies the size of the file in bytes
	public short reserved1;  // must always be set to zero
	public short reserved2;  // must always be set to zero
	public int offBits;      // specifies the offset from the
    					 // beginning of the file to the bitmap data
    
    public BitmapFileHeader(RandomAccessFile imageFile) {
    		try {
    			type =  Short.reverseBytes(imageFile.readShort());
			size = Integer.reverseBytes(imageFile.readInt());
	    		reserved1 = Short.reverseBytes(imageFile.readShort());
	    		reserved2 = Short.reverseBytes(imageFile.readShort());
	    		offBits = Integer.reverseBytes(imageFile.readInt());
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

	@Override
	public String toString() {
		return "BitmapFileHeader\n\tType: " + type + "\n\tSize: " + size + "\n\tReserved1: " + reserved1 + "\n\tReserved2: "
				+ reserved2 + "\n\tOffBits: " + offBits;
	}
    
}
