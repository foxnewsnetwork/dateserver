module Board
  class Tag::Controller < ::ApplicationController
    respond_to :js, :json, :html, :xml
    expose(:tag) { Board::Tag.find_by_id params[:id]}
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
