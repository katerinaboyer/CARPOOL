# CARPOOL
CSCE 431 - CARPOOL project

Heroku App
https://lit-earth-21193.herokuapp.com

For development:

If running on C9:
Follow https://medium.com/@hschin/developing-in-rails-on-aws-cloud9-c0ac7ef2431b for db instructions
then continue to https://stackoverflow.com/questions/26545746/cloud9-postgres and change the database.yml to the one posted in answer #1

  For development team:  
  >>git pull origin master
  navigate to the rails application in your terminal  
  >> bundle update  
  >> bundle install  
  >> IF ON C9: sudo service postgresql restart\n
  >> rails db:migrate  
  >> rails s  
  navigate to localhost/rider_applications
  
