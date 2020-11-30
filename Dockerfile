
FROM hantrungkien/android-ci:latest
MAINTAINER KienHT<kienhantrung@gmai.com>

RUN apt-get update \
	&& apt-get install --no-install-recommends -y --allow-unauthenticated build-essential git ruby-full libz-dev libiconv-hook1 libiconv-hook-dev jq \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& apt-get autoremove -y \
	&& apt-get clean

ADD Gemfile /Gemfile
ADD Gemfile.lock /Gemfile.lock	

RUN gem update --system \
&& gem install bundler \
&& bundle install \
&& gem install fastlane \
&& gem install fastlane-plugin-firebase_app_distribution \
&& gem install fastlane-plugin-telegram \
&& gem install fastlane-plugin-slack_upload \
&& gem install fastlane-plugin-gmail \
&& gem install fastlane-plugin-google_drive \
&& gem install fastlane-plugin-dropbox \
&& gem install fastlane-plugin-android_versioning