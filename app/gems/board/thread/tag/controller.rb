module Board
  class Thread::Tag < ::ApplicationController
    respond_to :js, :json, :html, :xml
    expose(:thread) do
      Thread.find_by_id(params[:thread_id])
    end
    expose(:tag) do
      thread.create params[:tag]
    end
    expose(:tags ) do
      thread.tags.search params[:child_name]
    end

    def create
      respond_with tag
    end

    def index
      respond_with tags
    end
  end
end