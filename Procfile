web: bundle exec rails s -p $PORT
worker: bundle exec sidekiq -t 25 -q default -q mailers
