class CreateJoinTableProductsSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :genres, :tags do |t|
       t.index [:genre_id, :tag_id]
       t.index [:tag_id, :genre_id]
    end
  end
end
