class PagesController < ApplicationController

  def answer
    p "params"
    @question = params[:question]
    generate_answer
  end

  def ask
  end

  private

  def generate_answer
    if @question == "I am going to work"
      @answer = "Great"
    elsif @question.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

