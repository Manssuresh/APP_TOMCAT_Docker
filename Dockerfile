FROM tomcat:8.0-alpine
#ADD https://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/10g/r3/cluster/session_state/files/shoppingcart.zip  /usr/local/tomcat/webapps/
# WORKDIR /tmp
# RUN wget https://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/10g/r3/cluster/session_state/files/shoppingcart.zip
# RUN unzip shoppingcart.zip
COPY shoppingcart.war /usr/local/tomcat/webapps/ 
EXPOSE 8080
CMD [ "catalina.sh","run" ]
