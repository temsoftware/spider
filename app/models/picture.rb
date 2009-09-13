class Picture < ActiveRecord::Base
  belongs_to :vehicle

  has_attached_file :file, 
  :styles => { 
    :thumbnail => "124x93>"},
  :url => "/uploads/pictures/:id/picture_:id_:style.:extension",
  :path => ":rails_root/public/uploads/pictures/:id/picture_:id_:style.:extension"

end
