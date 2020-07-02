class DropSignInTimesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :sign_in_times
    drop_table :sign_in_times_users
  end
end
