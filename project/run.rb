#!user/bin/env ruby
require_relative '../project/Author.rb'
require_relative '../project/Article.rb'
require_relative '../project/Magazine.rb'
author = Author.new("Jane Doe")
magazine = Magazine.new("Vogue", "Fashion")
article = Article.new("author", "magazine", "The Latest Fashion Trends")
puts author.name
puts magazine.category
puts article.title
puts article.author
puts article.magazine