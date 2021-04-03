FROM nginx:stable-alpine

RUN apk update && \
	apk add wget unzip && \
	wget https://github.com/ziahamza/webui-aria2/archive/refs/heads/master.zip && \
        unzip master.zip -d /usr/share/nginx/html && \
	mv /usr/share/nginx/html/webui-aria2-master/docs/* /usr/share/nginx/html/ && \
	rm -rf /usr/share/nginx/html/webui-aria2-master && \
	rm master.zip && \
	apk del wget unzip	

EXPOSE 80
