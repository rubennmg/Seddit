class AddCommunityRefToPosts < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :community, foreign_key: true
  end
end
