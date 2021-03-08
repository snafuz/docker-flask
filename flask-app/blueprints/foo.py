from flask import Blueprint

bp = Blueprint('foo', __name__)

@bp.route('/')
def home():
    return 'Foo home!!!'




