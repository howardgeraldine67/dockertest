FROM ruby:2.5
RUN echo "fookin wot m8" && lscpu
WORKDIR /myapp
COPY . .
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
