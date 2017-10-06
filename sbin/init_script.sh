[Unit]
Description=NGINX
After=syslog.target network.target remote-fs.target nss-lookup.target

[Service]
Type=forking
PIDFile=/home/Andrei_Bandarovich/nginx/nginx.pid
ExecStartPre=/home/Andrei_Bandarovich/nginx/sbin/nginx -t
ExecStart=/home/Andrei_Bandarovich/nginx/sbin/nginx
ExecReload=/home/Andrei_Bandarovich/nginx/sbin/nginx -s reload
ExecStop=/home/Andrei_Bandarovich/nginx/sbinnginx -s stop

[Install]
WantedBy=multi-user.target

