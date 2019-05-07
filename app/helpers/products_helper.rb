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

  def nav_helper style, tag_type, item_array
    nav_links = ''

    item_array.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

end
