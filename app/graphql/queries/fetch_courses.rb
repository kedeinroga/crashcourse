module Queries
  class FetchCourses < Queries::BaseQuery

    type [Types::CourseType], null: false

    def resolve
      Course.all.order(created_at: :desc)
    end
  end
end