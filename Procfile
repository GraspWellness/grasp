web: bundle exec rails s -p $PORT
worker: bundle exec sidekiq -e production -t 25 -q default -q mailers
