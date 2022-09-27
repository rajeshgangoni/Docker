FROM openjdk:11
ARG JMETER_VERSION="5.5"
RUN cd /opt \
&& wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz \
&& tar xzf apache-jmeter-${JMETER_VERSION}.tgz \
&& rm apache-jmeter-${JMETER_VERSION}.tgz
RUN ln -s /opt/apache-jmeter-${JMETER_VERSION}/bin/jmeter /usr/local/bin
CMD jmeter