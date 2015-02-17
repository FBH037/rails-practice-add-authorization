class ClubsController < ApplicationController

  before_filter :authorize
  before_filter :belongs_to_club, only: [:show]

  def index
    @clubs = current_student.clubs
  end

  def show
    @club = Club.find(params[:id])
  end

private
  def belongs_to_club
    @club = Club.find(params[:id])
      if  @club.students.include?(current_student)
      else
        render "public/403.html"
      end
  end
end
