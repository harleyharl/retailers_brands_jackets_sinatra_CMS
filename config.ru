$LOAD_PATH.unshift '.'

require 'config/environment'

use Rack::Static, urls: ['/css'], root: 'public' # Rack fix allows seeing the css folder.

if defined?(ActiveRecord::Migrator) && ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending run `rake db:migrate` to resolve the issue.'
end

#rack middleware that lets us use PUT PATCH and DELETE
use Rack::MethodOverride

use JacketsController
use BrandsController
run ApplicationController