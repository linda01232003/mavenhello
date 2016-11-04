FROM hub.c.163.com/oliver_lee/mytomcat:v3
COPY * /usr/lzt/
RUN -c "/bin/bash source /etc/profile" && cat $JAVA_HOME
MAINTAINER limingming
