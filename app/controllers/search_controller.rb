class SearchController < ApplicationController
   def index
     @houses = House.title_like_or_bottom_text_like_or_comment_like_or_sale_bottom_text_like_or_catalog_title_like(params[:query])
     @articles = Article.title_like_or_body_like(params[:query])
   end
end
