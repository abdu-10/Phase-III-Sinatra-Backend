# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "production"
ENV['DATABASE_URL'] ||= "postgres://bike_fleet_app:l7QPMSKx2FL9Wd5GlwFk5euk54Z7esY0@dpg-cfuuq753t39doauui3e0-a/bike_fleet_app"
ENV['BIKE_FLEET_DATABASE_PASSWORD'] ||= "l7QPMSKx2FL9Wd5GlwFk5euk54Z7esY0"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

# Require in all files in 'app' directory
require_all 'app'

