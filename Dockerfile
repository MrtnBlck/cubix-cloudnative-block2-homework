FROM quay.io/drsylent/cubix/block2/homework-base:java25

ENV CUBIX_HOMEWORK="Fekete Martin"
ENV APP_DEFAULT_MESSAGE=""

LABEL cubix.homework.owner="Fekete Martin"

ARG APP
COPY --chown=1001 ${APP}/target/*.jar app.jar
CMD ["java", "-jar", "/app.jar"]

