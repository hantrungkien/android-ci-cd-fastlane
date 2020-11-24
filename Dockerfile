
FROM hantrungkien/android-ci-sdk-ndk:latest
MAINTAINER KienHT<kienhantrung@gmai.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install --no-install-recommends -y --allow-unauthenticated build-essential git ruby-full && \
gem install fastlane && \
gem install bundler && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
apt-get autoremove -y && \
apt-get clean
