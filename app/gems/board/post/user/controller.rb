module Board
  class Post::User < ::ApplicationController
    respond_to :js, :json, :html, :xml
    expose(:post) do
      Post.find_by_id(params[:post_id])
    end
    expose(:user) do
      post.create params[:user]
    end
    expose(:users ) do
      post.users.search params[:child_name]
    end

    def create
      respond_with user
    end

    def index
      respond_with users
    end
  end
end