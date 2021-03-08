from flask import Flask

import config
import os, importlib

application = Flask(__name__)

@application.route("/")
def hello():
    return "Hello World!!!"

def blueprint_import(bp_dir):
    """
    dynamically import all the blueprints in the specified directory
    """
    if not os.path.isdir(bp_dir):
        return
    for name in os.listdir(bp_dir):
        if name.endswith(".py") and name!='__init__.py':
            module_name = name[:-3]
            try:
                m = importlib.import_module('{}.{}'.format(bp_dir,module_name))
            except ModuleNotFoundError as mnfe:
                application.logger.error('unable to load module: {}.{}'.format(bp_dir,module_name))
                continue
            if hasattr(m,'bp'):
                application.register_blueprint(m.bp, url_prefix='/{}'.format(module_name))

# load blueprints
blueprint_import(config.blueprints_dir)


if __name__ == "__main__":
    application.run(host="0.0.0.0", port=config.PORT, debug=config.DEBUG_MODE)
