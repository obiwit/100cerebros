# encoding=utf-8

import cherrypy

class Node(object):
    @cherrypy.expose
    def index(self):
        return ("Eu sou um objecto Folha")

class Root(object):
    def __init__(self):
        self.node = Node()
        
    @cherrypy.expose
    def index(self):
        return ("Eu sou o objecto Raiz")

    @cherrypy.expose
    def page(self):
        return ("Eu sou um método da Raiz")

class HTMLDocument(object):
    
    # associar o novo objecto à raíz
    def __init__(self):
        self.actions = Actions()
    
    @cherrypy.expose
    def index(self):
        path = "index.html"
        return (open(path, "rb").read())
    
    @cherrypy.expose
    def form(self):
        cherrypy.response.headers["Content-Type"] = "text/html"
        path = "form.html"
        return (open(path, "rb").read())
    
class Actions(object):
    @cherrypy.expose
    def doLogin(self, username=None, password=None):
        return "TODO: verificar as credenciais do utilizador " + username
    
if __name__ == "__main__":
    #cherrypy.tree.mount(Root(), "/")
    #cherrypy.server.start()
    
    #cherrypy.quickstart(Root())
    cherrypy.quickstart(HTMLDocument())