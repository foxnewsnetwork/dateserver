class CreateTagTagRelationship < ActiveRecord::Migration
  def change
    create_table :tag_tag_relationships do |t|
      t.integer :parent_id
      t.integer :child_id
    end
  end
end
