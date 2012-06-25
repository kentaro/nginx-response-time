# サーバ準備

reverse proxy:

```
$ nginx -p . -c ./nginx.conf
```

app server:

```
$ rackup
```

curlで叩いてみる。

```
$ curl -I http://localhost:9291/
```

# 結果

reverse proxy:

```
127.0.0.1 - - [25/Jun/2012:23:24:33 +0900] "HEAD / HTTP/1.1" 200 0 "-" "curl/7.21.4 (universal-apple-darwin11.0) libcurl/7.21.4 OpenSSL/0.9.8r zlib/1.2.5" "-" "3.006"
```

app server:

```
127.0.0.1 - - [25/Jun/2012 23:24:33] "HEAD / HTTP/1.1" 200 - 3.0018
```

curl:

```
$ curl -I http://localhost:9291/HTTP/1.1 200 OK 
Server: nginx/1.2.1Date: Mon, 25 Jun 2012 14:24:33 GMT
Content-Type: text/plain
Connection: keep-alive
X-Runtime: 3.001058
```
