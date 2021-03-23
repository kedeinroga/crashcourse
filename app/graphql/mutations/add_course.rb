module Mutations
  class AddCourse < Mutations::BaseMutation
    argument :params, Types::Input::CourseInputType, required: true

    field :course, Types::CourseType, null: false

    def resolve(params:)
      course_params = Hash params

      begin
        course = Course.create!(course_params)

        { course: course }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end