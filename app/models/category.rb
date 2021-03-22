class Category < ApplicationRecord
  has_many :expansions, class_name: 'Category',
                        foreign_key: 'parent_id',
                        dependent: :nullify,
                        inverse_of: false
  belongs_to :parent, class_name: 'Category', optional: true
  has_one :courses
end
