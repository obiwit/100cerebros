from PIL import Image
from PIL import ExifTags
import sys

def main(fname):
    print("21.1--------------------------------------")
    
    im = Image.open(fname)

    width, height = im.size

    print("Largura: %dpx" % width)
    print("Altura: %dpx" % height)
    print("Formato: %s" % im.format)

    tags = im._getexif()

    for k,v in tags.items():
        print(str(ExifTags.TAGS[k] + ":" + str(v)))

    print("21.2--------------------------------------")
    
    for s in [0.2, 8]:
        dimension = (int(width*s), int(height*s))
        new_im = im.resize(dimension, Image.ANTIALIAS) #20.3 -> BILINEAR BICUBIC NEAREST
        new_im.save(fname + "-%.2f.jpg" % s)
        print("Largura: %dpx" % new_im.width)
        print("Altura: %dpx" % new_im.height)
        print("Formato: %s" % new_im.format)

    print("21.4--------------------------------------")

    for i in [1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]:
        im.save(fname + "-test-%i.jpg" % i, quality=i)
        print("Largura: %dpx" % im.width)
        print("Altura: %dpx" % im.height)
        print("Formato: %s" % im.format)
        print("--------------------------------")
        
main(sys.argv[1])
