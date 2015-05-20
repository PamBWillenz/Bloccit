class QuestionsController < ApplicationController
  def index
    @question = Question.all
    # render 'index.html.erb'
  end

  def new
    @question = Question.new
    # render 'new.html.erb'
  end

  # def create
  #   @question = Question.new(params.require(:question).permit(:title, :body, :resolved))
  #   if @question.save
  #     flash[:notice] = "Question was saved."
  #     redirect_to @question
  #   else
  #     flash[:error] = "There was an error saving the question. Please try again."
  #     render :new
  #   end
  # end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  # def update
  #   @question = Question.find(params[:id])
  #   if @question.update_attributes(params.require(:question).permit(:title, :body, :resolved))
  #     flash[:notice] = "Question was updated."
  #     redirect_to @quesiton
  #   else
  #     flash[:error] = "There was an error saving the question. Please try again."
  #     render :edit
  #   end
  # end

  def destroy
  end
end
