# Base image: Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17-temurin

# Xóa app mặc định ROOT của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR (build sẵn trong target/) vào ROOT.war
COPY ch12_ex1_sqlGateway_war.war /usr/local/tomcat/webapps/ROOT.war

# Copy PostgreSQL driver vào thư viện của Tomcat
# Nếu bạn có postgresql-42.x.x.jar trong thư mục lib/, thì copy vào Tomcat lib
COPY lib/postgresql-42.7.4.jar /usr/local/tomcat/lib/

# Expose port 8080 cho Render
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
