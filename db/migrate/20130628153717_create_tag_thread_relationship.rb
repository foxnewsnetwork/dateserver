class CreateTagThreadRelationship < ActiveRecord::Migration
  def change
    create_table :tag_thread_relationships do |t|
      t.integer :tag_id
      t.integer :thread_id
    end
  end
end
