module Board
  class ThreadsController < ::ApplicationController
    respond_to :js, :json, :html
    expose(:thread) { ::Board::ThreadRecord.find_by_id params[:id] }
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
