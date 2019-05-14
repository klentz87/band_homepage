class Product < ApplicationRecord
  belongs_to :category
  
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '900', width: '900')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '350')
  end
end
