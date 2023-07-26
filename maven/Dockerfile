FROM maven as pkg
WORKDIR /build
COPY . .
RUN mvn clean package

FROM tomcat
COPY --from=pkg /build/target /usr/local/tomcat/webapps