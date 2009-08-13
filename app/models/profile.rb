class Profile < ActiveRecord::Base
  has_many :user
  
  validates_presence_of :description
  validates_uniqueness_of :description, :case_sensitive => :false

  def to_label
    "#{description}"
  end
end
