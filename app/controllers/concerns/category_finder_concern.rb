module CategoryFinderConcern
  extend ActiveSupport::Concern

  def determine_category_id category_name
    Category.where(name: category_name.upcase).first.id
  end
end
