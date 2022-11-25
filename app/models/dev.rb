class Dev < ApplicationRecord
  has_many :jobs

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :reviews, through: :jobs
  has_one_attached :photo
end
