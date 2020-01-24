FROM gcr.io/google-appengine/nodejs

MAINTAINER josecsmorales@gmail.com

# Install the dependencies.
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install wget && \
    apt-get install unzip && \
    npm install -g n && \
    n latest && \
    wget https://services.gradle.org/distributions/gradle-6.1-bin.zip -P /tmp && \
    unzip -d /opt/gradle /tmp/gradle-6.1-bin.zip && \
    rm -rf tmp/gradle-6.1-bin.zip

# Export Gradle Environment Variables
ENV GRADLE_HOME=/opt/gradle/gradle-6.1
ENV PATH=${GRADLE_HOME}/bin:${PATH}

# Set the workdir to app folder
WORKDIR /app

# Finally, all static assets.
ADD . .
RUN chmod -R a+r /app && yarn install

EXPOSE 8080

CMD [ "yarn", "start" ]
