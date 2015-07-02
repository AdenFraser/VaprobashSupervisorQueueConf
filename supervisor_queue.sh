MYQUEUE=$(cat <<EOF
[program:myqueue]
command=php artisan queue:work --daemon --env=local
directory=/vagrant
stdout_logfile=/vagrant/app/storage/logs/myqueue_supervisord.log
redirect_stderr=true
autostart=true
autorestart=true
EOF
)
echo "${MYQUEUE}" > /etc/supervisor/conf.d/myqueue.conf

