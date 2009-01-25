class Videos < Application
  def index(offset=nil)
    @posts = Post.all(:offset => ofsset, :limit => 15)
    display @posts
  end

  def create(video)
    video = Video.create(video)
    redirect_to resources(:videos)
  end
end