FROM quay.io/keycloak/keycloak:26.4.4

COPY ./realm-export /opt/keycloak/data/import
COPY ./themes /opt/keycloak/themes

# Pre-build optimizado para reducir memoria en arranque
RUN /opt/keycloak/bin/kc.sh build --db=dev-file

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", \
     "--optimized", \
     "--import-realm", \
     "--http-enabled=true", \
     "--hostname-strict=false", \
     "--http-host=0.0.0.0", \
     "--http-port=8080", \
     "--cache=local", \
     "--db=dev-file"]