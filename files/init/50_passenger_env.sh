#!/bin/bash

echo "passenger_app_env '${PASSENGER_APP_ENV:-production}';" > /etc/nginx/conf.d/passenger_app_env.conf
