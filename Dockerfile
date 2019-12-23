FROM open-liberty:springBoot2
#RUN mkdir /opt/ol/wlp/usr/shared/extlib
#COPY *.jar /opt/ol/wlp/usr/shared/extlib/
COPY server.xml /opt/ol/wlp/usr/servers/defaultServer/
#ENV CLASSPATH=/opt/ol/wlp/lib/
#COPY supplierdiversity-0.0.1-SNAPSHOT.war /opt/ol/wlp/usr/servers/defaultServer/dropins/
COPY supplierdiversity-0.0.1-SNAPSHOT.war /opt/ol/wlp/usr/servers/defaultServer/apps/
ENTRYPOINT ["/opt/ol/wlp/bin/server", "run"]
CMD ["defaultServer"]
