module Board
  class TagRecord < ::ActiveRecord::Base
    self.table_name = "tag"
    ### Inject Here! ###
    has_many :threads, :class_name => "Tag::Thread", :foreign_key => :tag_id  
  end
end