class ArticlesController < ApplicationController

	#GET /articles
	def index
		@articles = Article.all
	end

	#GET /articles/:id
	def show
		@articles = Article.find(params[:id])
	end
	
	#GET /articles/new
	def new
		@articles = Article.new
	end
	
	#POST /articles
	def create
		@articles = Article.new(title: params[:article][:title], body: params[:article][:body])

		@articles.save
		redirect_to @articles
	end

	#PUT /articles/:id
	def update
	end
end