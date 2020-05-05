

from flask import Flask
from flask import render_template
from flask import request

app = Flask(__name__)
"""
en este ejercicio se muestra  como renderizar un template de html,por default flask 
busca los html dentro de una carpeta que se llame templates, si es necesario cambiar ubicacion
hay que mandar el nombre de la carpeta desde que se instancia, es decir:
app = Flask(__name__, template_folder = "template_name_folder")
"""

@app.route('/', methods = ['GET','POST'])
def index(name='Pichones Corp Home'):
    return  render_template('home.html',title = name)


if __name__ == "__main__":
    app.run(debug=True)