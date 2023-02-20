class Article
    attr_accessor :title, :author, :magazine
    def initialize(title, author, magazine)
      @title = title
      @author = author
      @magazine = magazine
      # author.articles << self
      # magazine.articles << self
    end
    def to_s
      "#{title} #{author} #{magazine}"
    end
    def self.all
      @@all ||= []
    end
    def save
      self.class.all << self
    end
  end
  art1 = Article.new("new", "Papito", "Vogue")
  puts art1