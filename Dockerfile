FROM ruby:2.4.2

ENV RUBYOPT -EUTF-8

RUN apt-get update

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt-get install -y nodejs

# yarn
#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -\
#    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
#    && apt-get update \
#    && apt-get install -y yarn=0.24.6

RUN npm install -g yarn@0.24.6

RUN rm -rf /var/lib/apt/lists/*

RUN npm install -g n \
    && n 7.8.0 \
    && node -v \
    && npm -v
