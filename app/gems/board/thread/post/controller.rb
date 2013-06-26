module Board
  class Thread::Post < ::ApplicationController
    respond_to :js, :json, :html, :xml
    expose(:thread) do
      Thread.find_by_id(params[:thread_id])
    end
    expose(:post) do
      thread.create params[:post]
    end
    expose(:posts ) do
      thread.posts.search params[:child_name]
    end

    def create
      respond_with post
    end

    def index
      respond_with posts
    end
  end
end