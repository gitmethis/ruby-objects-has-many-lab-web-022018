class Post
  attr_accessor :title, :author_name
  
  def initialize(title)
    @title = title
  end
  
  def author_name
    if @author == nil
       return nil  
    end
    @author
  end
end