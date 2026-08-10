FROM nginx:1.29-alpine

ARG VERSION=dev
ENV VERSION=$VERSION

COPY index.html /tmpl/index.html
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
