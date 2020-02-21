#! /bin/bash

export $(cat web.env | sed 's/#.*//g' | xargs)
export $(cat database.env | sed 's/#.*//g' | xargs)

echo "Variables ="
echo $USERID
echo $USER
echo $APP

useradd -m -u $USERID $USER
cd /home/$$USER

echo Y | mix phx.new --no-html --no-webpack /home/$USER/$APP --app $APP
cd /home/$USER/$APP

chown -R $USER:$USER /home/$USER/$APP

mix deps.get