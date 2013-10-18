#!/bin/bash

chkconfig --level 2345 crond on
chkconfig --level 2345 redis on
initctl reload-configuration

initctl start supervisor
service redis restart
service crond restart
supervisorctl restart all
