#FROM registry.ewu.oscp.easycredit.intern/tb-container-build/nginx:1
FROM nginx:latest

COPY container/ /

RUN mkdir -p /var/cache/nginx /var/run /var/log/nginx \
  && chmod -R 777 /var/cache/nginx /var/run /var/log/nginx /docker-entrypoint.d docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
