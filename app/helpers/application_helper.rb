module ApplicationHelper
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

  def nav_items
    [
      { url: root_path,
        title: 'HOME',
      },
      {
        url: products_path,
        title: 'MERCH',     
      },
      {
        url: shows_path,
        title: 'SHOWS',     
      },
      {
        url: blogs_path,
        title: 'NEWS',     
      },
      {
        url: contact_path,
        title: 'CONTACT' 
      }
    ]
  end



end
