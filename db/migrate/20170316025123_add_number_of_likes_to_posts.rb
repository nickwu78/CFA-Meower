class AddNumberOfLikesToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :number_of_likes, :integer
  end
end
