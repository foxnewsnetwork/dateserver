module Board
  class Thread::Post::Record < ::ActiveRecord
    self.table_name = "posts"
    belongs_to :thread, :foreign_key => :thread_id, :class_name => "Board::Thread"
    ### Inject Here ###
  end
end