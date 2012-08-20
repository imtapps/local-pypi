#!/bin/bash

gunicorn 'pypiserver:app("/home/appsdev/Dropbox/eggs",None,None,"/opt/localpypi/.pypipass")' --workers=1 --daemon --bind 127.0.0.1:8888
