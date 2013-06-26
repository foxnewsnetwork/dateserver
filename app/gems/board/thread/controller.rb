module Board
  class Thread::Controller < ::ApplicationController
    respond_to :js, :json, :html, :xml
    expose(:thread) { Board::Thread.find_by_id params[:id]}
    def show
      respond_with thread
    end

    def update
      respond_with thread.update_attributes(params[:thread])
    end

    def destroy
      respond_with thread.destroy
    end
  end
end
