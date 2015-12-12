class AddAttributesToBids < ActiveRecord::Migration
  def change
    add_column :bids, :minimum_amount, :integer
  end
end
