module ProductsHelper
  def category_path_helper product
    Category.find(product.category_id).name.downcase
  end

  def merch_nav_items
    [
      { url: products_path,
        title: 'ALL',
      },
      {
        url: albums_path,
        title: 'ALBUMS',     
      },
      {
        url: eps_path,
        title: 'EPs',     
      },
      {
        url: other_path,
        title: 'OTHER',     
      }
    ]
  end
end
