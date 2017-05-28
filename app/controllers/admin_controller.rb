class AdminController < ApplicationController
  before_action :set_news, only: %i[edit upsert]

  # GET /admin
  # GET /admin.json
  def edit; end

  def upsert
    if @news.update(news_params)
      redirect_to admin_path, notice: t('news.upsert.success')
    else
      render :edit
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_news
    @news = News.most_active || News.new
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def news_params
    params.require(:news).permit(:title, :description, :published_until)
  end
end
