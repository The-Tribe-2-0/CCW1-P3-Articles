class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def articles
      Article.all.select { |article| article.author == self }
    end
  
    def magazines
      articles.map { |article| article.magazine }.uniq
    end
  
    def add_articles(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def contributed
      magazines.map { |magazine| magazine.category }.uniq
    end

    def topic_areas
        articles.map { |article| article.magazine.category }.uniq
      end

  end
  