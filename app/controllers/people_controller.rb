class PeopleController < ApplicationController
  def index
  end

  def show
    @person = Person.first
    if @person.nil?
      redirect_to people_path, alert: :person_not_found
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to people_path, alert: :person_not_found
  end

  def edit
  end
end
