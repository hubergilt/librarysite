#!/bin/bash
source /home/usuario/libraryenv/bin/activate
uwsgi --emperor /home/usuario/librarysite/uwsgi/inits
