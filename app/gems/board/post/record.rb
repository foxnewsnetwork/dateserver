module Board
  class PostRecord < ::ActiveRecord::Base
    self.table_name = "post"
    ### Inject Here! ###
has_many :users, :class_name => "Post::User", :foreign_key => :post_id  end
end