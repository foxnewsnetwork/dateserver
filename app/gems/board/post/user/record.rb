module Board
  class Post::User::Record < ::ActiveRecord
    self.table_name = "users"
    belongs_to :post, :foreign_key => :post_id, :class_name => "Board::Post"
    ### Inject Here ###
  end
end