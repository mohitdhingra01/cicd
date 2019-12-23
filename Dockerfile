FROM open-liberty:springBoot2

COPY server.xml /opt/ol/wlp/usr/servers/defaultServer/
RUN touch /opt/ol/wlp/usr/servers/defaultServer/test1.txt
COPY supplierdiversity-0.0.1-SNAPSHOT.war /opt/ol/wlp/usr/servers/defaultServer/apps/
ENTRYPOINT ["/opt/ol/wlp/bin/server", "run"]
CMD ["defaultServer"]
