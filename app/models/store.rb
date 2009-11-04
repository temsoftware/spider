class Store < ActiveRecord::Base

  has_attached_file :data, :styles => {:original => "424x294>"},
    :url => "/uploads/stores/:class/:id/:id_:style.:extension",
    :path => ":rails_root/public/uploads/stores/:class/:id/:id_:style.:extension"

  def to_label
    data.url(:original)
  end

end

