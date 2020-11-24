
FROM ubuntu:20.04
MAINTAINER KienHT<kienhantrung@gmai.com>

RUN apt-get update && \
apt-get install --no-install-recommends -y --allow-unauthenticated build-essential git ruby-full && \
gem install fastlane && \
gem install bundler && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
apt-get autoremove -y && \
apt-get clean
