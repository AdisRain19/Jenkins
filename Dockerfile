# Gunakan base image Java
FROM openjdk:8-jre-alpine

# Tambahkan label (opsional)
LABEL maintainer="adisrain19 <adisrain19@example.com>"

# Buat direktori kerja di dalam container
WORKDIR /usr/app

# Copy file .jar hasil build Maven dari folder target
COPY ./target/java-maven-app-*.jar /usr/app/java-maven-app.jar

# Jalankan aplikasi Java
ENTRYPOINT ["java", "-jar", "/usr/app/java-maven-app.jar"]
