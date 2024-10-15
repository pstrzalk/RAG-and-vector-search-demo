class Rag < ApplicationRecord
  has_neighbors :embedding, normalize: true
end
