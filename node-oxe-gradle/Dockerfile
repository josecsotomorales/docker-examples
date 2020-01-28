FROM gcr.io/rpa-devops/oxe:18.4.0

# Install the dependencies.
RUN yum update -y && \
    yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
    yum install -y wget && \
    wget https://services.gradle.org/distributions/gradle-6.1-bin.zip -P /tmp && \
    unzip -d /opt/gradle /tmp/gradle-6.1-bin.zip && \
    rm -rf /tmp/gradle-6.1-bin.zip && \
    curl -sL https://rpm.nodesource.com/setup_12.x | bash - && \
    yum install -y nodejs && \
    curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && \
    yum install -y yarn

# Export Java and Gradle Environment Variables
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/
ENV GRADLE_HOME=/opt/gradle/gradle-6.1
ENV PATH=${GRADLE_HOME}/bin:${PATH}

# Set the workdir to app folder
WORKDIR /app

# Finally, all static assets.
ADD . .
RUN chmod -R a+r /app && yarn install

EXPOSE 8080

ENTRYPOINT ${ORACLE_BASE}/${RUN_DB} && yarn start
