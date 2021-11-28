class AddJsonFieldToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :custom, :json
  end
end
