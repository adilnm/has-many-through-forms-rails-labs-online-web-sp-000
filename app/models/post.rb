class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  # accepts_nested_attributes_for :categories

  def categories_attributes=(categories_hash)
    categories_hash.each do |i,v|
      self.categories.build(name: v[:name])
    end

  end

end
