module Board
  class Tag::Thread < ::ApplicationController
    respond_to :js, :json, :html, :xml
    expose(:tag) do
      Tag.find_by_id(params[:tag_id])
    end
    expose(:thread) do
      tag.create params[:thread]
    end
    expose(:threads ) do
      tag.threads.search params[:child_name]
    end

    def create
      respond_with thread
    end

    def index
      respond_with threads
    end
  end
end