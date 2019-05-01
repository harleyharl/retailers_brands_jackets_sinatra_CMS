class Location < ActiveRecord::Base

 include Slugifiable #so we can use as instance method
 extend Slugifiable #so we can use as class method for methods like Artist.find_by_slug

 has_many :jackets
 
end
