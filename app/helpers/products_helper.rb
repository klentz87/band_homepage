module ProductsHelper
  def category_path_helper product
    if Category.find(product.category_id).name == 'ALBUMS'
      albums_path
    elsif Category.find(product.category_id).name == 'EPS'
      eps_path
    elsif Category.find(product.category_id).name == 'OTHER'
      other_path
    end
  end
end
