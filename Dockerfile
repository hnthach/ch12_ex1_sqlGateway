# Base image: Tomcat 9 + JDK 17
FROM tomcat:9.0-jdk17-temurin

# Xóa webapp mặc định ROOT
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR đã build sẵn thành ROOT.war
COPY ch12_ex1_sqlGateway_war.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 cho Render
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
