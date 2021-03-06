module Types
  module Input
    class CourseInputType < Types::BaseInputObject
      argument :name, String, required: false
      argument :level, String, required: false
      argument :price, Float, required: false
      argument :discount, Float, required: false
      argument :description, String, required: false
      argument :category_id, Integer, required: true
    end
  end
end