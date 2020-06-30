class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :PIN
      t.integer :role, :default => 2
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
