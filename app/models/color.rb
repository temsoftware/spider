class Color < ActiveRecord::Base
  has_many :vehicle

  validates_uniqueness_of :name, :case_sensitive => :false
  validates_presence_of :name
end
