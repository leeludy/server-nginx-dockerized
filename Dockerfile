FROM nginx

#RUN apt-get update && \
# apt-get install -y \
# nodejs npm

RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && \
 apt-get install -y nodejs

COPY ./nginx/proxy.conf /etc/nginx/conf.d/default.conf
