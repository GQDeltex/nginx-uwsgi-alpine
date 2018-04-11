cd /app/
pip install -r requirements.txt
echo "Starting NGINX"
nginx -t
nginx
echo "Starting UWSGI"
uwsgi -s /tmp/uwsgi.sock --manage-script-name --mount /=main:app &
ps aux | grep nginx
ps aux | grep uwsgi
tail -F /var/log/nginx/error.log
