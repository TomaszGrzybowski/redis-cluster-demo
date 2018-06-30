FROM redis:4.0

# Install Ruby.
RUN \
  apt-get update && \
  apt-get install -y ruby && \
  apt-get install -y wget


#install ruby redis support and download redis-trib.rb utility
RUN gem install redis && \
cd /tmp && \
wget http://download.redis.io/redis-stable/src/redis-trib.rb && \
chmod +x redis-trib.rb 
 

ADD create-config-files.sh /usr/local/bin/create-config-files.sh

CMD bash -C '/usr/local/bin/create-config-files.sh';'bash'


