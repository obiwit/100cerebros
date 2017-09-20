from PIL import Image
from PIL import ExifTags
from PIL import ImageDraw
import math
import sys
#coding: utf-8

def marcaAgua(im1, im2, start_x, start_y, f):
    #start -> onde comeca a marca dagua
    #f -> grau de transparencia
    width, height = im1.size
    for x in xrange(width):
        for y in xrange(height):
            p1 = im1.getpixel((x+start_x, y+start_y))
            p2 = im2.getpixel((x, y))
            if(p2[3] == 0):
                continue

            r = int(p1[0]*(1-f)+p2[0]*f)
            g = int(p1[1]*(1-f)+p2[1]*f)
            b = int(p1[2]*(1-f)+p2[2]*f)

            im1.putpixel((x, y), (r, g, b, p[1]))

            im2.save(fname2 + "-marcaAgua.jpg")

def get_factor(x, y, xref, yref):
    distance = math.sqrt( pow(x-xref, 2) + pow(y-yref, 2))
    distance_to_edge = math.sqrt(pow(xref, 2) + pow(yref, 2))

    return 1-(distance/distance_to_edge) #Pergetagem

def is_edge(im, x, y, diff, bw):
    # p -> pixel
    # diff -> diferenca
    #
    
    #obter o pixel
    p = im.getpixel((x,y))
    width, height = im.size

    if(x<width-1 and y < height-1 and x > 0 and y > 0):
        #vizinhos acima e abaixo
        for vx in xrange(-1, 1):
            for vy in [-1, 1]:
                px = im.getpixel((x + vx, y + vy))
                if(abs(p[0]-px[0]) > diff):
                    return (0, 128, 128)

        #vizinhos da esquerda e direita
        for vx in [-1, 1]:
            px = im.getpixel((x + vx, y))
            if(abs(p[0] - px[0]) > diff):
                return (0, 128, 128)

    if bw :
        return (255, 128, 128)
    else:
        return p

    
def sepia(im):
    width, height = im.size

    for x in xrange(width):
        for y in xrange(height):
            p = im.getpixel((x, y))
            r = int(p[0]*0.189 + p[1]*0.769 + p[2]*0.393)
            g = int(p[0]*0.168 + p[1]*0.686 + p[2]*0.349)
            b = int(p[0]*0.131 + p[1]*0.543 + p[2]*0.272)
            im.putpixel((x, y), (r, g, b, p[1]))
    return im

def saturation(im, f, fname):
    new_im = im.convert("YCbCr")
    width, height = im.size

    for x in xrange(width):
        for y in xrange(height):
            p = new_im.getpixel((x, y))
            py = p[0]
            pb = min(255, int((p[1] - 128)*f)+128)
            pr = min(255, int((p[2] - 128)*f)+128)
            new_im.putpixel((x, y), (py, pb, pr, p[1]))
            
    new_im.save("%s-sat_%r.jpg" % (fname, f))
            

def gammaCorrection(y, g, m):
    #y-> valor do canal Y; g -> fator correcao da gama; m -> valor max intensidade +-255
    return (y**g)*(m/(m**g))

def effect_intensity(im, f, fname):
    new_im = im.convert("YCbCr")
    width, height = im.size

    for x in xrange(width):
        for y in xrange(height):
            pixel = new_im.getpixel((x, y))
            py = min(255, int(pixel[0] * f))
            new_im.putpixel((x, y), (py, pixel[1], pixel[2]))

    new_im.save("%s-intensid_%r.jpg" % (fname, f))

def effect_gray(im):
    width, height = im.size

    for x in xrange(width):
        for y in xrange(height):
            p = im.getpixel((x, y))
            l = int(p[0]*0.299 + p[1]*0.587 + p[2]*0.144)
            im.putpixel((x, y), (l, p[1]))
    return im

def main(fname, fname2):
    print("21.1--------------------------------------")
    
    im = Image.open(fname)

    width, height = im.size

    print("Largura: %dpx" % width)
    print("Altura: %dpx" % height)
    print("Formato: %s" % im.format)
    print("Mode: %s" % im.mode) #21.7

    tags = im._getexif()

    for k,v in tags.items():
        print(str(ExifTags.TAGS[k] + ":" + str(v)))

    print("21.2--redimensao------------------------------------")
    
    for s in [0.2, 8]:
        dimension = (int(width*s), int(height*s))
        new_im = im.resize(dimension, Image.ANTIALIAS) #20.3 -> BILINEAR BICUBIC NEAREST
        new_im.save(fname + "-%.2f.jpg" % s)
        print("Largura: %dpx" % new_im.width)
        print("Altura: %dpx" % new_im.height)
        print("Formato: %s" % new_im.format)
#        print("Size: %s" % new_im.size)
        print("Mode: %s" % new_im.mode)#21.7
        print("--------------------------------")

    print("21.5--diferentes formatos--------------------------")

    for i in [1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]:
        name = fname + "-test-%i.bmp" % i # 21.6 PNG TIFF BMP
        im.save(name, quality=i)
        new_im = Image.open(name)
        print(name)
        print("Largura: %dpx" % new_im.width)
        print("Altura: %dpx" % new_im.height)
        print("Formato: %s" % new_im.format)
       # print("Size: %s" % new_im.size)
        print("Mode: %s" % new_im.mode)#21.7
        
        
    #print("21.8--restricao de bits e alteracao de cor-------------")

    #nao funciona
    #width, height = im.size

    #for x in xrange(width):
      #  for y in xrange(height):
      #      p = im.getpixel((x, y))
      #      r = p[0] & Ob11110000
      #      g = p[1] & Ob11110000
      #      b = p[2] & Ob11110000
      #      im.putpixel((x, y),(r, g, b))

    #im.save(fname + "-4bits.jpg")

    print("21.9--troca de cor-------------")
    
    new_im = Image.new(im.mode, im.size)

    for x in range(width):
        for y in range(height):
            p = im.getpixel((x, y))
            r = p[1]
            g = p[0]
            b = p[2]
            new_im.putpixel((x, y), (r, g, b))
    new_im.save("%s-pix_cor_%r_%r.jpg" % (fname, x, y))

    #nao percebi o 21.10

   # print("21.11--tons de cinza-------------")
    # da erro na funcao effect_gray
    #new_im3 = im.convert("L")
    #new_im3 = effect_gray(new_im3)
    #new_im3.save(fname + "-L.jpg")

    print("21.12--intensidade---------------")
    effect_intensity(im, 0.5, fname)
    effect_intensity(im, 1, fname)
    effect_intensity(im, 1.5, fname)

    print("21.13--correcao de gama---------------")
    print("correcao de gama: " + str(gammaCorrection(1, 1/2.2, 255))) #tenho a certeza q nao era so isto, mas... :3

    print("21.14--saturacao---------------") 
    saturation(im, 0, fname)
    saturation(im, 1, fname)
    saturation(im, 40, fname)
    saturation(im, 90, fname)
    saturation(im, 128, fname)
    saturation(im, 150, fname)
    saturation(im, 500, fname)

    print("21.15--sepia---------------") 
    new_im4 = sepia(im)
    new_im4.save(fname + "-sepia.jpg")

    #print("21.16--bordas---------------") #nao percebi
   # new_im5 = is_edge(im, 0, 0, 0, 0)
   # new_im5.save(fname + "-bordas.jpg")

   # print("21.17--Vignette---------------") nao esta a dar
   
    #for x in xrange(width):
     #   for y in xrange(height):
      #      pixel = new_im.getpixel((x, y))
      #      py = min(255, int(pixel[0] * get_factor(x, y, 8 , 8)))
      #      new_im.putpixel((x, y), (py, pixel[1], pixel[2]))
      #      new_im.save(fname + "-vignette.jpg")

    #print("21.18--Marca de Agua---------------") da erro

    #p1 pixel da imagem original
    #p2 pixel da marca de agua

    #im2 = Image.open(fname2)
    #marcaAgua(im, im2, 0, 0, 0.5)

    ImageFont = usr/share/fonts/truetype

    draw = ImageDraw.Draw(im)
    font = ImageFont.truetype("ola.tiff", 40)

    draw.text((20,20), "LabI", (255,255,255), font=font)
      
     
    
    
main(sys.argv[1], sys.argv[2])
