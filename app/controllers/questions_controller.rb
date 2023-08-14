class QuestionsController < ApplicationController
  def ask; end

  def answer
    @message = if [params[:question]].join == 'I am going to work'
                 'Great!'
               elsif [params[:question]].join[-1] == '?'
                 'Silly question, get dressed and go to work!'
               else
                 "I don't care, get dressed and go to work!"
               end
  end
end
