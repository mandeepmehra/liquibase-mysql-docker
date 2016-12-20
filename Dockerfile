FROM java

MAINTAINER Mandeep Mehra

ENV LIQUIBASE_VERSION=3.5.3 \
    LIQUIBASE_INSTALL_DIR=/opt/liquibase

RUN wget "https://github.com/liquibase/liquibase/releases/download/liquibase-parent-${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}-bin.zip" -O /tmp/liquibase-${LIQUIBASE_VERSION}-bin.zip \
          && mkdir -p ${LIQUIBASE_INSTALL_DIR} \
          && unzip  /tmp/liquibase-${LIQUIBASE_VERSION}-bin.zip -d ${LIQUIBASE_INSTALL_DIR}

ENTRYPOINT ${LIQUIBASE_INSTALL_DIR}/liquibase
