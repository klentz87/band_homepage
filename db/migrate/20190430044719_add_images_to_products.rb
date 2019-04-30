class AddImagesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :main_image, :text
    add_column :products, :thumb_image, :text
  end
end
