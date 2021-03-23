module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
    field :all_courses, [Types::CourseType], null: false

    def all_courses
        Course.all
    end

    field :fetch_courses, resolver: Queries::FetchCourses
    field :fetch_course, resolver: Queries::FetchCourse
  end
end
