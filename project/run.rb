require_relative 'author.rb'
require_relative 'article.rb'
require_relative 'magazine.rb'
author = Author.new("Jane Doe")
magazine = Magazine.new("Vogue", "Fashion")
article = Article.new("author", "magazine", "The Latest Fashion Trends")
puts author.name
puts magazine.category
puts article.title
puts article.author
puts article.magazine