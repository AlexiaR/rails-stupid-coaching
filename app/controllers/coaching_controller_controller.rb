class CoachingControllerController < ApplicationController
  def answer
    @query = params[:query]
    @answer = if @query == nil
      "Please write something"
    elsif @query == "I am going to work right now!"
      "Wonderful!"
    elsif @query.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def ask
    @query = params[:query]
  end
end

