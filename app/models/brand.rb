class Brand < ActiveRecord::Base
  has_many :car

  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => :false

  def to_label
    "#{name}"
  end
end
