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

  def contributors # Returns an array of Author instances who have written for this magazine
    
    Article.all.filter{|article|
      article.magazine.name == @name}
      .map{|article|article.author}.uniq

  end

  def find_by_name # Given a string of magazine's name, this method returns the first magazine object that matches

  end

  def article_titles # Returns an array strings of the titles of all articles written for that magazine

  end

  def contributing_authors # Returns an array of authors who have written more than 2 articles for the magazine

  end

end
