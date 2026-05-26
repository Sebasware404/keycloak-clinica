FROM quay.io/keycloak/keycloak:26.4.4

COPY ./realm-export /opt/keycloak/data/import
COPY ./themes /opt/keycloak/themes

RUN /opt/keycloak/bin/kc.sh build --db=dev-file

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--optimized", "--import-realm", "--http-host=0.0.0.0", "--http-port=8080"]