class Author
  attr_reader :name, :magazine # A name **cannot** be changed after it is initialized.

  def initialize(name)
  # An author is initialized with a name, as a string.
    @name = name
  end

  def articles # Returns an array of Article instances the author has written
    Article.all.select do |articles|
      articles.author == self.name
    end
  end

  def magazines # Returns a **unique** array of Magazine instances for which the author has contributed to
    magazines = Magazine.all.map do |mag|
          mag
    end
    magazines.uniq
  end

  def add_article magazine, title # Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
    Article.new(self, magazine, title)
  end

  def topic_areas # Returns a **unique** array of strings with the categories of the magazines the author has contributed to
    topics = magazines.map do |magazine|
      magazine.category
    end
    topics.uniq
  end 

end
