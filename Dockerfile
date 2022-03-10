FROM registry.cn-hangzhou.aliyuncs.com/ops-cloud/nginx:alpine

ADD ./dist /code
ADD ./nginx.conf 	/nginx.conf.template
ADD ./bootstrap.sh     /bootstrap.sh
RUN chmod +x /bootstrap.sh

CMD /bootstrap.sh
