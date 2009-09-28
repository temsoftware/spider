class Partner < ActiveRecord::Base

validates_presence_of :name
validates_presence_of :image


named_scope :parceiros,  {:conditions => ["site IS NOT NULL AND image IS NOT NULL"]}

end
