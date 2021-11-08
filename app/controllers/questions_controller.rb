class QuestionsController < ApplicationController

  def ask
  end

  def answer
    question = params[:question]
    if question == "I am going to work"
      @answer = "Great!"
    else
      silly = "Silly question, get dressed and go to work!"
      dontcare = "I don't care, get dressed and go to work!"
      question.ends_with?("?") ? @answer = silly : @answer = dontcare
    end
  end
end
