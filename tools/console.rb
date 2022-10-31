require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("George RR Martin")
author1.articles
author1.magazines

magazine1 = Magazine.new("GOT", "fiction")
magazine2 = Magazine.new("standard", "news")
magazine3 = Magazine.new("nation", "news")
magazine1.contributors

article1 = Article.new(author1, magazine1, "Kings Landing")
article2 = Article.new(author1, magazine1, "The watch")
article1.author
author1.add_article(magazine1, "Prince of Azkaban")
author1.add_article(magazine1, "chronical of nania")
author1.add_article(magazine1, "Prince Casper")
Article.all.count
Article.all[1].title
author1.topic_areas
Magazine.find_by_name("GOT")
magazine1.article_titles







### DO NOT REMOVE THIS
binding.pry

0
