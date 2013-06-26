module Board
  class Post::Controller < ::ApplicationController
    respond_to :js, :json, :html, :xml
    expose(:post) { Board::Post.find_by_id params[:id]}
    def show
      respond_with post
    end

    def update
      respond_with post.update_attributes(params[:post])
    end

    def destroy
      respond_with post.destroy
    end
  end
end
