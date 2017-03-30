import cherrypy
import sys
import os.path

class HTMLDocument(object):
    @cherrypy.expose
    def index(self):
        w = open("/Users/bea/Desktop/labi2016-automation-7/proj1/index.html", "r")
        s = w.read()
        w.close()
        return s

    # This page doesn't work...
    @cherrypy.expose
    def info(self):
        w = open("/Users/bea/Desktop/labi2016-automation-7/proj1/info.html", "r")
        s = w.read()
        w.close()
        return s

if __name__ == "__main__":
    cherrypy.quickstart(HTMLDocument(), '/', 'htmlCherry.config')
