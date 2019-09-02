#!/bin/bash
## Script that monitor a folder where it can be put a zip file with all the webroot of a LAMP application, once found one zip it call the script deploy_unzipbackupdeploy.sh that provides to backup and make an rsync of the files
## This script not have a rollback script... soon available
## You need to have a folder which is like:
## /
## --var
## ----www
## -------{appName}
## ----------------deploy (which will contains the zip file}
## ----------------webroot (the DocumentRoot/baseroot of the app)
## ----------------backups (the directory with the backup of files) 

ispresent=0
shopt -s nullglob dotglob     # To include hidden files
files=(/var/www/sites/appname/deploy/*.zip)
if [ ${#files[@]} -gt 0 ];
then
        echo "Found it";
        ispresent=1
else
        echo "No file found";
fi
echo $ispresent
if [$ispresent:=1];
then
        bash /var/www/sites/appname/deploy_unzipbackupdeploy.sh
        echo "Found a Zip";
fi
