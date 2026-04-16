FROM nginx:1.28.3-alpine

LABEL org.opencontainers.image.authors="Francisco José Rodríguez Afonso" \
      org.opencontainers.image.documentation="https://metachannelcorporation.github.io/Odoo/" \
      org.opencontainers.image.source="https://github.com/MetaChannelCorporation/Odoo" \
      org.opencontainers.image.version="1.0.0" \
      org.opencontainers.image.vendor="MetaChannelCorporation" \
      org.opencontainers.image.licenses="CC0-1.0" \
      org.opencontainers.image.title="Odoo" \
      org.opencontainers.image.description="A simple Docker setup for Odoo!"

COPY ./conf.d/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
