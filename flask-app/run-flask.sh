#!/bin/bash
gunicorn app --config config.py --pid gunicorn.pid