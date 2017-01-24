#!/bin/bash

echo "Checking if jar file exists..."
if [ ! -f /bteam/bteam.jar ] 
    then
	echo "jar file does exist, unzipping package"
        unzip /data/BTeam_Server_v1.0.12c.zip -d /bteam
fi

echo "Running launcher..."
cd /bteam
sh /bteam/launch.sh
