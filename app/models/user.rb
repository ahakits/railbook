class User < ApplicationRecord
  validates :agreement, acceptance: { on: :create }
  validates :email, confirmation: true
end
