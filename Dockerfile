FROM quay.io/keycloak/keycloak:26.4.4

COPY ./realm-export /opt/keycloak/data/import
COPY ./themes /opt/keycloak/themes

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin123

ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start", "--import-realm", "--optimized"]