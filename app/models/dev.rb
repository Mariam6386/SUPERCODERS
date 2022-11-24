class Dev < ApplicationRecord
  has_many :jobs
  has_many :reviews, through: :jobs
end
