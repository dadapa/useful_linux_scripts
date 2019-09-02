## SEE BEFORE deploy_checkfile.sh HEADER
rm -rf /var/www/sites/appname/deploy/*.deployed
unzip /var/www/sites/appname/deploy/*.zip -d "/var/www/sites/appname/deploy"
cd /var/www/sites/appname/webroot
zip -r /var/www/sites/foo/backups/version-$(date +"%Y-%m-%d-%H-%M-%S").zip *
rsync -vauX --remove-source-files /var/www/sites/foo/deploy/zipname/* /var/www/sites/appname/webroot
rm -rf /var/www/sites/appname/deploy/zipname
# Rename all *.txt to *.text
for f in /var/www/sites/appname/deploy/*.zip; do
    mv -- "$f" "${f%.zip}.deployed"
done
