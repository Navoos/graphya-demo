from flask import Flask
from .db import init_db_command


def create_app():
    app = Flask(__name__)
    app.cli.add_command(init_db_command)

    # from app import db

    return app
