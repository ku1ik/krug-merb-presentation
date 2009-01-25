class Videos < Application
  def index
    @posts = Post.all
    display @posts
  end

  def create
    video = Video.create(params[:video])
    run_later do
      video.process
    end
    redirect_to resources(:videos)
  end
end