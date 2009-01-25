class Posts < Application
  provides :html, :json, :xml
 
  def index
    @posts = Post.all
    display @posts # jesli nie ma szablonu, @posts.to_json
  end

  def edit
    render # renderuje posts/edit.{html, json, xml}.erb
  end

  def foo
    only_provides :html
  end
end