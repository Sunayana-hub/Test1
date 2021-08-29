FROM tomcat

LABEL maintainer="Sunayana Pol"

ADD ./display.sh

EXPOSE 8080

CMD ["display.sh", "run"]
