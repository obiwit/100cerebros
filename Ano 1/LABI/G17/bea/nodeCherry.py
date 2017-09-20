import cherrypy

class Node(object):
    @cherrypy.expose
    def index(self):
        return "Eu sou um objecto Folha"

class Root(object):
    def __init__(self):
        self.node = Node()
    @cherrypy.expose
    def index(self):
        return "Eu sou o objecto Raiz"
    @cherrypy.expose
    def page(self):
        return "Eu sou um método da Raiz"

if __name__ == "__main__":
    cherrypy.quickstart(Root())
