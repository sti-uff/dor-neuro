# Load the rails application
require File.expand_path('../application', __FILE__)

my_date_formats = { :default => '%d/%m/%Y' } 

# Initialize the rails application
Dorneuro::Application.initialize!

Time::DATE_FORMATS.merge!(my_date_formats) 
Date::DATE_FORMATS.merge!(my_date_formats)