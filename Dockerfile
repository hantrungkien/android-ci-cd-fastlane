
FROM hantrungkien/android-ci:ndk
MAINTAINER KienHT<kienhantrung@gmai.com>

RUN apt-get update \
	&& apt-get install --no-install-recommends -y --allow-unauthenticated build-essential git ruby-full libz-dev libiconv-hook1 libiconv-hook-dev

RUN gem install fastlane
RUN gem install bundler
RUN gem install fastlane-plugin-firebase_app_distribution
RUN gem install fastlane-plugin-telegram
RUN gem install fastlane-plugin-slack_upload
RUN gem install fastlane-plugin-gmail
RUN gem install fastlane-plugin-google_drive
RUN gem install fastlane-plugin-dropbox

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& apt-get autoremove -y \
	&& apt-get clean
