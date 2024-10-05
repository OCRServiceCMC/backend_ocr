FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY target/backend_ocr-0.0.1-SNAPSHOT.jar /app/backend_ocr.jar
COPY src/main/resources /app/src/main/resources

EXPOSE 8081

ENV FOLDER_OUTPUT_DIRECTORY=/var/www/uploads/
ENV IMAGE_OUTPUT_DIRECTORY=/var/www/uploads/
ENV PDF_OUTPUT_DIRECTORY=/var/www/uploads/

ENTRYPOINT ["java", "-jar", "/app/backend_ocr.jar"]