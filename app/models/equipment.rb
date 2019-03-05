class Equipment < ActiveRecord::Base
  has_many :event
  belongs_to :equipment_type
end
