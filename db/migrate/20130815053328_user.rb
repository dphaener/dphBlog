class User < ActiveRecord::Migration
  def change
		add_column :user, :username, :string
  end
end
