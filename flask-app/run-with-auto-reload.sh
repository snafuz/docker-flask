#!/bin/bash
watchmedo shell-command --patterns="*.py;*.html;*.css;*.js" --recursive --command='echo "${watch_src_path}" && kill -HUP `cat gunicorn.pid`' blueprints/ &
gunicorn app --config config.py --pid gunicorn.pid