class Car < ActiveRecord::Base
  has_many   :vehicle
  belongs_to :brend
end
