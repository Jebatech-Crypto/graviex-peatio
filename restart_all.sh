bundle exec rake assets:clean
bundle exec rake assets:clobber
bundle exec rake tmp:clear
bundle exec rake assets:precompile
exec ./restart_daemons.sh
sudo service nginx restart



