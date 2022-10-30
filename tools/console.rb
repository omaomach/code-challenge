require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("George RR Martin")
author1.articles
author1.magazines

magazine1 = Magazine.new("GOT", "fiction")
magazine1.contributors

article1 = Article.new(author1, magazine1, "Kings Landing")
article1.author
author1.add_article(magazine1, "Prince of Azkaban")
Article.all.count
Article.all[1].title







### DO NOT REMOVE THIS
binding.pry

0
