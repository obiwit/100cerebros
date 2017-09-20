import cherrypy

class HelloWorld(object):
    @cherrypy.expose
    def index(self):
        host = cherrypy.request.headers["Host"]
        return "You have successfully reached " + host
        #return "Goodbye World!"

cherrypy.quickstart(HelloWorld())
#cherrypy.tree.mount(HelloWorld(), "/")
#cherrypy.server.start()