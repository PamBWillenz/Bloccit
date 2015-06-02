class SummariesController < ApplicationController
  def index
    @summaries = Summary.all
  end

  def show
    @post = Post.find(params[:post_id])
    @summary = @post.summary
  end

  def edit
    @summary = Summary.find(params[:id])
  end

  def new
    @summary = Summary.new
  end

  def create
    @post = Post.find(params)[:post_id]
    @summary = @post.build_summary(params:[summary].permit(:body, :post))
    if @summary
      flash[:notice] = "Summary was saved."
      redirect_to @post
    else
      flash[:error] = "There was an error saving your summary."
      render :new
    end
  end

  def update
    @summary = Summary.find(params[:id])
    if @summary.update_attributes(params.require(:summary).permit(:body, :post))
      flash[:notice] = "Summary was updated."
      redirect_to :summary
    else
      flash[:error] = "There was an error saving your summary."
      render :edit
    end
  end
end