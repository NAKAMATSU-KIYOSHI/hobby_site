class CreatePostFromUserToItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :user, index: true
    add_reference :posts, :item, index: true
  end
end
