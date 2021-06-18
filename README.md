# wx-ng


微信网站拦击申诉
使用docker 部署，验证完成后关系即可

1.申请微信我是站长申诉，然后微信会给一个文件名字和文件内容
  我这使用的是tencent211414379937000907.txt 修改成自己的即可
2.修改project.conf 文件

​	

```
location /tencent211414379937000907.txt {
            alias /etc/nginx/conf.d/tencent211414379937000907.txt;
        }
```



```
编译镜像
docker build  -f Dockerfile  -t wx-nginx:v1 .
```

```
运行镜像
docker run -d --name=wx-nginx  -p 80:80 wx-nginx:v1
```

现在可以开始验证了
