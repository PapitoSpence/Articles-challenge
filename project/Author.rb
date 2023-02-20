# For the author class requirements, these are the requirements.
# Author
# Author#initialize(name)
# An author is initialized with a name, as a string.
# A name cannot be changed after it is initialized.
# Author#name
# Returns the name of the author
# Pseudocode.
# Initiate a class => Author
# Use attribute accessors to declare variables (name variable)
# Initialize name, print a string with the name of the author.
# Use the name of the author as a variable.
# Return the name of the author
# Initiate a class => Author
class Author
    attr_reader :name
    @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end
    def self.all
      @@all
    end
    def articles
      Article.all.select { |article| article.author == self }
    end 
    def magazines
      articles.map { |article| article.magazine }.uniq
    end
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
  end
  John = Author.new("Jane Doe")
  puts John.name