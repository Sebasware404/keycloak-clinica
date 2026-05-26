FROM quay.io/keycloak/keycloak:26.4.4

COPY ./realm-export /opt/keycloak/data/import
COPY ./themes /opt/keycloak/themes

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin123

# Limitar memoria Java
ENV JAVA_OPTS="-Xms128m -Xmx384m"

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start-dev", "--import-realm", "--http-port=8080", "--hostname-strict=false"]