class AddPosts < ActiveRecord::Migration[5.0]
  def change
    create_table(:posts) do |t|
      t.string :caption
      t.string :image, null: false
      t.string :title

      t.timestamps
    end
  end
end
