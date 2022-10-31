class Article

    attr_reader :magazine, :title # An article **cannot** change its author, magazine, or title after it is has been initialized.

    @@article = []
    def initialize author, magazine, title
    # An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
        @author = author
        @magazine = magazine
        @title = title
        @@article << self
    end

    def author 
        @author.name
    end

    def Magazine
        @magazine.name
    end

    # Returns an array of all Article instances
    def self.all 
        @@article
    end

end
