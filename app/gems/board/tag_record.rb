module Board
  class TagRecord < ::ActiveRecord::Base
    self.table_name = "tag"
    ### Inject Here! ###
    has_many :threads, :class_name => "Board::Tag::ThreadRecord", :foreign_key => :tag_id
    
  end
end