#!/bin/bash
set -e
set -x

sleep 10s
bash .devcontainer/mssql/postCreateCommand.sh 'qwerty1!' './bin/Debug/' './.devcontainer/mssql/'

cd frontend
yarn install
