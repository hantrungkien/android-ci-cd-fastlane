
FROM hantrungkien/android-ci-sdk-ndk:latest
MAINTAINER KienHT<kienhantrung@gmai.com>

RUN apt-get update && \
apt-get install --no-install-recommends -y --allow-unauthenticated build-essential git ruby-full

RUN gem install fastlane
RUN gem install bundler
RUN gem install fastlane-plugin-firebase_app_distribution
RUN gem install fastlane-plugin-telegram
RUN gem install fastlane-plugin-slack_upload
RUN gem install fastlane-plugin-gmail
RUN gem install fastlane-plugin-google_drive

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
apt-get autoremove -y && \
apt-get clean
