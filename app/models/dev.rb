class Dev < ApplicationRecord
  has_many :jobs
  has_one_attached :photo
end
