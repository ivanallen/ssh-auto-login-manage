#!/bin/sh
cd "`dirname $0`"
BASE_HOME=`pwd`

host=$1
port=$2
user=$3
password=$4
id_file=$5

export GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

if [ $5 ]; then
    ./auto_login_with_id_file.exp $host $port $user $id_file
else
	./auto_login.exp $host $port $user $password
fi

