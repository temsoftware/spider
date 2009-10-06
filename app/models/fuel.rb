class Fuel < ActiveRecord::Base
  has_many :vehicle

  validates_presence_of :name, :case_sensitive => :false

  validates_uniqueness_of :name
end
