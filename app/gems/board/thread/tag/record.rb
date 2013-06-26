module Board
  class Thread::Tag::Record < ::ActiveRecord
    self.table_name = "tags"
    belongs_to :thread, :foreign_key => :thread_id, :class_name => "Board::Thread"
    ### Inject Here ###
  end
end