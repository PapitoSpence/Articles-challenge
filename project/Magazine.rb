class Magazine
    attr_accessor :name, :category
    def initialize(name, category)
      @name = name
      @category = category
    end
    def to_s
      "#{name} (#{category})"
    end
    def articles
      Article.all.select { |article| article.magazine == self }
    end
    def authors
      articles.map(&:author).uniq
    end
    def self.all
      @@all ||= []
    end
    def save
      self.class.all << self
    end
  end
  mag1 = Magazine.new("vogue", "Fashion")
  puts mag1