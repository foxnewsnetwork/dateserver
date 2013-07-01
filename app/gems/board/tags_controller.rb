module Board
  class TagsController < ::ApplicationController
    respond_to :js, :json, :html
    expose(:tag) { ::Board::TagRecord.find_by_id params[:id] }
    def show
      respond_with tag
    end

    def update
      respond_with tag.update_attributes(params[:tag])
    end

    def destroy
      respond_with tag.destroy
    end
  end
end
