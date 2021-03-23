class User < ApplicationRecord
  has_secure_token
  has_and_belongs_to_many :courses
end
