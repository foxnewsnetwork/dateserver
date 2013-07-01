module Board
  class Tag::ThreadRecord < ::ActiveRecord
    self.table_name = "threads"
    belongs_to :tag, :foreign_key => :tag_id, :class_name => "Board::Tag"
    ### Inject Here ###
  end
end