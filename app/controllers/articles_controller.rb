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
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
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
