import cherrypy
import time
from math import radians, cos, sin, asin, sqrt
class HelloWorld(object):
	@cherrypy.expose
	def index(self):
		# Método serve_file tb poderia ser utilizado
		f = open("index.html")
		data = f.read()
		f.close()
		return data

	@cherrypy.expose
	def time(self):
		cherrypy.response.headers["Content-Type"] = "application/json"
		return time.strftime(’{"date":"%d-%m-%Y", "time":"%H:%M:%S"}’0)
	
	def distance(lat, lon):
		lat1 = 38.752667
		lon1 = -9.184711
		
		lon, lat, lon1, lat1 = map(radians, [lon, lat, lon1, lat1]) # Graus -> rads
		
		dlon = lon - lon1
		dlat = lat - lat1
		a = sin(dlat/2)**2 + cos(lat1) * cos(lat) * sin(dlon/2)**2 # Haversine
		c = 2 * asin(sqrt(a))
		
		km = 6367 * c # 6367=raio da terra
		
		cherrypy.response.headers["Content-Type"] = "application/json"
		
		return json.dumps({"distance": km})
		
	@cherrypy.expose
	def upload(self, myFile):
		fo = open(os.getcwd()+ ’/uploads/’’ + myFile.filename, ’wb’)
		while True:
			data = myFile.file.read(8192)
			if not data:
			break
			fo.write(data)
		fo.close()

	cherrypy.server.socket_port = 8080
	cherrypy.server.socket_host = "0.0.0.0"
	cherrypy.tree.mount(HelloWorld(),"/","app.config")
	cherrypy.engine.start()
	cherrypy.engine.block()
