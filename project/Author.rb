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
    attr_accessor :name, :articles
    def initialize(name)
        @name = name
        @articles = []
        # Print the name as an author
        puts "My name is #{name}"
    end
    def add_article(magazine, title)
        article = Article.new(self, magazine, title)
        @articles << article
        magazine.contributors << self
        article
    end
    def topic_areas
        magazines.map(&:category).uniq
    end
end
Ryan = Author.new("Ryan, an actor")