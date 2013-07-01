module Board
  class ThreadRecord < ::ActiveRecord::Base
    self.table_name = "thread"
    ### Inject Here! ###
    has_many :tags, :class_name => "Board::Thread::TagRecord", :foreign_key => :thread_id
    has_many :posts, :class_name => "Board::Thread::PostRecord", :foreign_key => :thread_id
    
  end
end