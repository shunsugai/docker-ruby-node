FROM ruby:2.4.0

RUN apt-get update && apt-get install -y \
      nodejs \
      --no-install-recommends && rm -rf /var/lib/apt/lists/*
