FROM ${IMAGE_TAG}:${RELEASE}

RUN rvm install ${RUBY}
RUN rvm alias create default ${RUBY}
ENV PATH "$PATH:~/.rvm/gems/ruby-${RUBY}/wrappers"
ENV PATH "$PATH:~/.rvm/gems/ruby-${RUBY}/bin"
