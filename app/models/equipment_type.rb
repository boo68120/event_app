class EquipmentType < ActiveRecord::Base
  has_many :equipment
  has_one :event
end
