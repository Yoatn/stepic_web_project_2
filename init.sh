sudo ln -s /home/box/web/etc/gunicorn.conf.py /etc/gunicorn.d/gunicorn.conf.py
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/nginx.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start
