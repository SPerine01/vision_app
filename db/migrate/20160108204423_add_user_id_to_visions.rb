class AddUserIdToVisions < ActiveRecord::Migration
  def change
    add_column :visions, :user_id, :integer
  end
end
