class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre)
    @genre = genre
    GENRES << genre
  end
end

##This syntax, Book::GENRES tells us a couple of things. 
##First, whenever we see ::, it indicates "name spacing". 
##In other words, it tells us that the thing on the right side 
##of the colons is a thing defined within the context, or name space, 
##of the thing on the left side of the colons.

##In this case, this is telling us that there is a constant, 
##GENRES (we know it's a constant because it's written in all caps) 
##that is defined within our Book class.

##This is what is known as a Class Constant.