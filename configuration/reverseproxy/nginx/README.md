# doh-stream
Before copying this to somewhere else like '/etc/nginx/stream/dot-stream'

Please add this line to /etc/nginx/nginx.conf :
```
stream {
        include /etc/nginx/streams/*;
}
```