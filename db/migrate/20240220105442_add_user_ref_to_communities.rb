class AddUserRefToCommunities < ActiveRecord::Migration[7.1]
  def change
    add_reference :communities, :user, foreign_key: true
  end
end
