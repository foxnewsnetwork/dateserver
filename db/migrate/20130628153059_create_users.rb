class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :ip
      t.string :browser
      t.string :os
    end
  end
end
