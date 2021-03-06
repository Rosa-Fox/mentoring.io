class MentorsController < ApplicationController
  before_filter :set_current_member
  before_filter :logged_in?

  def index
    @mentors = Member.mentors.where.not(:id => @member.id).all
    render :'mentors/index'
  end

  def show
    @member = set_current_member
  end

  private

  def set_current_member
    @member = current_member
  end
end
