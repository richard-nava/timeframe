class CreateSignInTimesUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :sign_in_times_users do |t|
      t.integer :user_id
      t.integer :sign_in_time_id
    end
  end
end
