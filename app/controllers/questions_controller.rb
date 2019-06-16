class QuestionsController < ApplicationController
  ANSWERS = {
    1 => 'Great!',
    2 => "I don't care, get dressed and go to work!",
    3 => "Silly question, get dressed and go to work!"
  }

  def ask
  end

  def answer
    @question = params['ask_question']
    if @question == 'I am going to work'
      @answer = ANSWERS[1]
    elsif @question[-1] == '?'
      @answer = ANSWERS[3]
    elsif @question[-1] != '?'
      @answer = ANSWERS[2]
    end
  end
end
