class Year < ActiveRecord::Base
  has_many :vehicle

  def to_label
    "#{description}"
  end
end
