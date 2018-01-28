FROM ${IMAGE_TAG}:${RELEASE}

RUN rvm install ${RUBY}
RUN rvm alias create default ${RUBY}
