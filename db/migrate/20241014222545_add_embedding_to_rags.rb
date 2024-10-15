class AddEmbeddingToRags < ActiveRecord::Migration[7.2]
  def change
    add_column :rags, :embedding, :vector, limit: 3072
  end
end
