class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.integer :user_id
    	t.string :title
    	t.string :description
    	t.date :deadline
    	t.timestamps null: false
    end
  end
end
