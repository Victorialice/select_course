class AppointmentsController < ApplicationController
  def create
    course = Course.find params[:course][:id]

    @student = Student.find(params[:student_id])

    @student.appointments.create(:course => course)



    render text: course.name
    #render text: "asdfasdf"
    #render text: "I'm the value of hash"
  end
end
