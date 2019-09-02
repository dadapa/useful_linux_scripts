# useful_linux_scripts
Useful scripts for daily programmer use

* update_repos.sh => script to update everyday our repos in a folder, can be modified to update all the repos we're working on
* deploy_checkfile.sh + deploy_unzipbackupdeploy.sh => ## Script that monitor a folder where it can be put a zip file with all the webroot of a LAMP application, once found one zip it call the script deploy_unzipbackupdeploy.sh that provides to backup and make an rsync of the files (This script not have a rollback script... soon available. Feel free to support it.)
