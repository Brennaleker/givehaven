class Organization < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :user

  #---------------validations----------------------
  validates :name, :contact_phone, :approval_status, :population_served, :annual_funding, :number_served, :shipping_address_1, :shipping_city, :shipping_state, :shipping_postal_code, :karma, presence: true
  validates :user_id, uniqueness: true
  validates :shipping_postal_code, length: { is: 5 }
  validates :contact_phone, length: { is: 10 }

  #---------------uploaders-------------------------
  mount_uploader :image, ImageUploader

end
