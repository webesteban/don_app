class API::NewsController < API::APIController

	def all
		articles = Article.all        
        json_articles = []
        articles.each do |article|
            json_articles.push({
                id: article.id,
                date: article.date,
                title: article.title,
                content: article.content
            })
        end
        response = {:success => true, :data => {:news => json_articles}}
        status = 200

        render :json => response, :status => status
	end
end
