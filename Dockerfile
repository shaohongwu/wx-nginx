FROM nginx:1.21.0

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/

RUN rm /etc/nginx/conf.d/default.conf
COPY project.conf /etc/nginx/conf.d/
COPY tencent211414379937000907.txt /etc/nginx/conf.d/