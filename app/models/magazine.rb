class Magazine
  attr_accessor :name, :category # The name and category of the magazine **can be** changed after being initialized.

  @@magazine = []
  def initialize(name, category)
  # A magazine is initialized with a name as a string and a category as a string
    @name = name
    @category = category
    @@magazine << self
  end

  # Returns an array of all Magazine instances
  def self.all 
    @@magazine
  end

  def articles
    Article.all.filter do |art|
      art.magazine.name == self.name
    end
  end

  def authors
    articles.map{|article|article.author}
  end

  def contributors # Returns an array of Author instances who have written for this magazine
    authors.uniq
  end

  def self.find_by_name name # Given a string of magazine's name, this method returns the first magazine object that matches
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles # Returns an array strings of the titles of all articles written for that magazine
    articles.map do |art|
      art.title
    end
  end

  def contributing_authors # Returns an array of authors who have written more than 2 articles for the 
    contributing = []
    authors.tally.each do |key, value|
      if value > 2
        contributing << key
      end
    end
    contributing
  end

end
