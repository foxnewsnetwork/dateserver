class CreateThreads < ActiveRecord::Migration
  def change
    create_table :threads do |t|
      t.integer :user_id
      t.string :title
    end
  end
end
