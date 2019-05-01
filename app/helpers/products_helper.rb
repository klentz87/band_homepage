module ProductsHelper
  def category_path_helper product
    Category.find(product.category_id).name.downcase
  end
end
