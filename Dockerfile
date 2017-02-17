FROM hub.c.163.com/oliver_lee/mytomcat:v9
MAINTAINER limingming
COPY . /usr/lzt/
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH
RUN /bin/sh -c "cd /usr/lzt && mvn clean && mvn compile && mvn package"
RUN /bin/sh -c "cp /usr/lzt/target/jfinal_maven.war /var/lib/tomcat7/webapps"

