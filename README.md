# docker-nginx-letsencrypt
## No other scripts, no manual modification

This `docker-compose.yaml` will make secure `nginx` server with `letsencrypt` SSL certificate.   
I tried to avoid make any complicated bash script. No need to modify nginx configuration.   
Change env.example to .env and modify as you need.
`docker-compose.yaml` has two `nginx` instances, one for http and the other for https

nginx-http only for https redirection and letsencrypt certificate renewal purpose.   
nginx-https can be used for reverse-proxy or whatever you need.   
Two nginx instances because without SSL certificate, nginx-https will fail.   
I don't want to make any complicated script to make fake certificate, replace later..

Hope this will be useful.
