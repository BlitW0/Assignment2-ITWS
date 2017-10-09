#!/bin/bash

tot=`cat /etc/passwd | wc -l`
log=`w | wc -l`
echo "$log OUT OF $tot USERS ARE ONLINE RIGHT NOW"
