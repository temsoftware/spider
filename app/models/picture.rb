class Picture < ActiveRecord::Base
  belongs_to :vehicle

  has_attached_file :data, :styles => {:original => "248x186>", :thumbnail => "124x93>"},
    :url => "/uploads/:class/:id/picture_:id_:style.:extension",
    :path => ":rails_root/public/uploads/:class/:id/picture_:id_:style.:extension"

  def to_label
    data.url(:thumbnail)
  end

end

