class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  has_attached_file :photo, PAPERCLIP_STORAGE_OPTS
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
