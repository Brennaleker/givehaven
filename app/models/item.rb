class Item < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :project

  #---------------validations----------------------
  validates :title, :url, :quantity, :size, :price, :amazon_id, presence: true
end
