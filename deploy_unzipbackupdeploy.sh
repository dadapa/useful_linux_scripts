m -rf /var/www/sites/appname/deploy/*.deployed
unzip /var/www/sites/appname/deploy/*.zip -d "/var/www/sites/servizifv/deploy"
cd /var/www/sites/appname/webroot
zip -r /var/www/sites/foo/backups/version-$(date +"%Y-%m-%d-%H-%M-%S").zip *
rsync -vauX --remove-source-files /var/www/sites/foo/deploy/zipname/* /var/www/sites/foo/webroot
rm -rf /var/www/sites/appname/deploy/zipname
# Rename all *.txt to *.text
for f in /var/www/sites/appname/deploy/*.zip; do
    mv -- "$f" "${f%.zip}.deployed"
done
