package aula7.prob2;


/**
 * Bitmap
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Bitmap {
    public static BitmapFileHeader bitmapFileHeader;
    public static BitmapInfoHeader bitmapInfoHeader;
    public static byte[] rgbQuad;  // color pallete – opcional (ver abaixo)
    public static byte[] data;     // pixel data
}
