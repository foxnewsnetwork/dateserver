module Board
  class ThreadRecord < ::ActiveRecord::Base
    self.table_name = "thread"
    ### Inject Here! ###
has_many :posts, :class_name => "Thread::Post", :foreign_key => :thread_idhas_many :tags, :class_name => "Thread::Tag", :foreign_key => :thread_id  end
end