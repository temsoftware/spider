class Picture < ActiveRecord::Base
  belongs_to :vehicle

  has_attached_file :picture, :styles => { :thumbnail => "140x140>"},
                    :url => "/uploads/pictures/:id/picture_:id_:style.:extension",
                    :path => ":rails_root/public/uploads/pictures/:id/picture_:id_:style.:extension"

end
