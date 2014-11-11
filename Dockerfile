FROM ruby:2.1.4
MAINTAINER m0a <abe00makoto@gmail.com>
RUN apt-get update && apt-get install -y  nodejs
RUN gem install middleman
RUN apt-get install -y git

# middleman routine
WORKDIR work
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh
ADD ssh_config /root/.ssh/config
#RUN touch /root/.ssh/known_hosts
RUN git clone https://github.com/DiscoverMeteor/DiscoverMeteorStatic.git
WORKDIR DiscoverMeteorStatic
#RUN git submodule init
#RUN git submodule update --remote
RUN bundle install
ENV DMLANG ja
#ADD config.rb /work/DiscoverMeteorStatic/
