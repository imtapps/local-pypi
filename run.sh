#!/bin/bash

/opt/local-pypi/virtualenv/bin/gunicorn 'pypiserver:app("/root/jenkins/Dropbox/eggs",None,None,None)' --workers=1 --daemon --bind 127.0.0.1:8888
