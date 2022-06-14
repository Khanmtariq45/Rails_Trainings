class User < ApplicationRecord
  validates :email, presence: true
  paginates_per 2
end
