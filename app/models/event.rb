class Event < ActiveRecord::Base
  belongs_to :equipment 
  has_one :driver
end
