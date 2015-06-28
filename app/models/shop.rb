class Shop < ActiveRecord::Base

validates :shop_name,
    presence: true, length: { maximum: 20 }
  validates :tel,
    presence: true, length: { maximum: 13 }
  validates :address,
    presence: true, length: { maximum: 100 }
  validates :url,
    presence: true, length: { maximum: 500 }

  has_many :reviews
  has_many :users, through: :reviews
end
