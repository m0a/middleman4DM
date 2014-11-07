FROM ruby:2.1.4
#FROM centos
MAINTAINER m0a <abe00makoto@gmail.com>
RUN apt-get update && apt-get install -y  nodejs
RUN gem install middleman
RUN apt-get install -y git
# RUN apt-get update && sudo apt-get install -y ruby2.0 ruby2.0-dev
# centos
#RUN yum -y update
#RUN yum -y install ruby
#RUN yum -y install gem

# middleman routine
ENV DMLANG jp
WORKDIR work
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh
ADD ssh_config /root/.ssh/config
RUN touch /root/.ssh/known_hosts
RUN git clone https://github.com/DiscoverMeteor/DiscoverMeteorStatic.git
WORKDIR DiscoverMeteorStatic
RUN git submodule init
RUN git submodule update --remote
#ADD * /work/
RUN bundle install
#RUN middleman
EXPOSE 4567
