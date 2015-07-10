class CreateBooks < ActiveRecord::Migration
  def change
  	create_table :books do |t|
  	 
  		t.string  :bname
  		t.string  :author1
       t.string  :author2
  		t.integer :prize
      t.integer :nobooks
  		
  		
  		t.timestamps
  	end
  end
end
