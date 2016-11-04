FROM hub.c.163.com/oliver_lee/mytomcat:v3
COPY * /usr/lzt/
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH
MAINTAINER limingming
