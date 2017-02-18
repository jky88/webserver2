#!/usr/bin/python3

from flask import Flask

enable_debugging = True

from wolfie_home.webpages import webpage
from wolfie_home.api_web import webapi
from wolfie_home.api_device import devapi
import os

# server setting
static_folder_path = 'wolfie_home/static'   # static files (e.g. js files...) path
app = Flask(__name__, static_folder=static_folder_path)
app.secret_key = os.urandom(24)    # set the secret key. This is used for session. Keep this really secret

# register blueprints
app.register_blueprint(webpage)
app.register_blueprint(webapi)
app.register_blueprint(devapi)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=enable_debugging)
