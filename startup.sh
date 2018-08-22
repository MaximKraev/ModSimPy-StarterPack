#!/bin/bash

cd /home/codio/workspace

source /home/codio/miniconda3/bin/activate ModSimPy

jupyter notebook -y --NotebookApp.token='' --port 3000 --NotebookApp.ip='*' --no-browser --NotebookApp.tornado_settings='{ "headers": { "Content-Security-Policy": "frame-ancestors 'self' https://codio.com" } }'

