class RemoveDateFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :date, :datetime
  end
end
