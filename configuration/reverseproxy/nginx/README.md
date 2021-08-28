# doh-stream
Before copying this to somewhere else like '/etc/nginx/streams/dot-stream'

Please add this line to /etc/nginx/nginx.conf :
```
stream {
        include /etc/nginx/streams/*;
}
```