class AddBooks < ActiveRecord::Migration
  def up
  	change_table :books do |t|
  		t.string  :bcomments
  		t.integer :bfollowers
  	end
  end
end
