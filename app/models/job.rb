class Job < ApplicationRecord
  belongs_to :user
  belongs_to :dev
end
