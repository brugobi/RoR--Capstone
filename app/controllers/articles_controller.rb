class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[show index]

  def index
    @feature_article = Article.most_voted.first
    if params.key?(:category)
      @category = Category.find_by_name(params[:category])
      @articles = Article.where(category: @category).belong_to_category.includes(:category)
    else
      @articles = Article.belong_to_category.includes(:category)
    end
  end

  def show; end

  # GET /articles/new
  def new
    @article = current_user.articles.build
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  # GET /articles/1/edit
  def edit
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  # POST /articles

  def create
    @article = current_user.articles.build(article_params)
    @article.category_id = params[:category_id]
    if @article.save
      flash[:notice] = 'Article created successfully.'
      redirect_to root_path
    else
      flash[:alert] = @article.errors.full_messages
      redirect_back(fallback_location: new_article_path)
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @article.category_id = params[:category_id]
    if @article.update(article_params)
      flash[:notice] = 'Article updated successfully.'
      redirect_to article_path(@article)
    else
      lash[:alert] = @article.errors.full_messages
      redirect_back(fallback_location: new_article_path)
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = current_user.articles.find(params[:id])
    @article.destroy
    flash[:notice] = 'Article was successfully destroyed.'
    redirect_to root_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:title, :content, :photo, :image, :author_id)
  end
end
