class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_student
    Student.find_by_id(session[:student_id])
  end

  def authorize
    redirect_to root_path, notice: "Please log in" if current_student.nil?
  end

  helper_method :current_student

end
