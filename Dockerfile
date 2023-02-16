#Create MySQL Image for CICDPlay Tutorial Application
FROM mysql

ENV MYSQL_ROOT_PASSWORD cicdplaypassword
ADD cplay.sql /docker-entrypoint-initdb.d

EXPOSE 3306
