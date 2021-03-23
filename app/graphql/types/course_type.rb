module Types
  class CourseType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :level, String, null: true
    field :price, Float, null: true
    field :discount, Float, null: true
    field :description, String, null: true
    field :category_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :name, String, null: true
    field :level, String, null: true
    field :price, Float, null: true
    field :discount, Float, null: true
    field :description, String, null: true
  end
end
