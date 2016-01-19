class Photo < ApplicationRecord
  belongs_to :gallery, class_name: 'Gallery', foreign_key: 'gallery_id', inverse_of: :photos
  has_asset :file, styles: {
    original: '800x800>',
    thumbnail: '300x300#' # DEPRECATED
  }
  default_scope { order(:list_order) }
end
