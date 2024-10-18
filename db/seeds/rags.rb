names = [
  "Andromeda", "Antlia", "Apus", "Aquarius", "Aquila", "Ara", "Aries", "Auriga",
  "Boötes", "Caelum", "Camelopardalis", "Cancer", "Canes Venatici", "Canis Major",
  "Canis Minor", "Capricornus", "Carina", "Cassiopeia", "Centaurus", "Cepheus"
]

# Predefined data for Rags
rags = [
  { id: 1, description: "A finely woven rag with intricate embroidery along the edges, making it ideal for delicate tasks. Its texture is smooth but slightly firm, perfect for handling light cleaning duties.", condition: 5, color: "red", size: "S" },
  { id: 2, description: "This rag has a thick, quilted texture that feels plush to the touch. It offers excellent absorption and can handle larger spills or scrubbing tasks with ease.", condition: 7, color: "blue", size: "M" },
  { id: 3, description: "A rugged, coarse fabric with reinforced stitching, designed for heavy-duty work. Despite its rough surface, it is durable and can endure tough scrubbing without tearing.", condition: 9, color: "green", size: "L" },
  { id: 4, description: "Soft to the touch, with a gentle velvety texture, this rag feels luxurious and is perfect for polishing delicate surfaces without leaving any streaks or lint.", condition: 8, color: "yellow", size: "S" },
  { id: 5, description: "A thin and lightweight rag with a silky texture, making it suitable for quick dusting and polishing tasks. The fabric is flexible, allowing it to reach tight corners.", condition: 6, color: "purple", size: "M" },
  { id: 6, description: "This rag features a highly absorbent microfiber material that excels at trapping dust and dirt. Its ultra-soft fibers are perfect for sensitive surfaces like glass or electronics.", condition: 10, color: "orange", size: "L" },
  { id: 7, description: "A durable rag with a woven fabric, featuring fine detailing in the stitching. The surface has a subtle texture, which makes it effective for cleaning without scratching.", condition: 2, color: "black", size: "S" },
  { id: 8, description: "A plush, thick rag that feels heavy and substantial in hand. The soft pile offers maximum absorbency, and it works well for wiping down surfaces after washing.", condition: 9, color: "white", size: "M" }, #
  { id: 9, description: "A rough, textured rag with a grid-like pattern in the fabric. The slightly abrasive surface is ideal for scrubbing and removing tough grime.", condition: 2, color: "pink", size: "L" },
  { id: 10, description: "A lightweight rag with a smooth, almost slippery texture, making it ideal for quick dusting and cleaning fragile items. It glides across surfaces effortlessly.", condition: 5, color: "green", size: "S" },
  { id: 11, description: "This rag has a smooth, satin-like surface with a tight weave, ideal for polishing metals and other reflective surfaces. It would be a great gift. It leaves a shine without leaving residue.", condition: 8, color: "grey", size: "S" },
  { id: 12, description: "This rag has a thick, towel-like feel with a knobby texture. It’s perfect for absorbing large amounts of liquid and can be used for various cleaning tasks.", condition: 7, color: "yellow", size: "M" },
  { id: 13, description: "A rag made from a fine, tightly woven fabric that feels sleek to the touch. It might be a good option as a souvenir. The material is durable yet flexible, making it versatile for both wiping and polishing.", condition: 9, color: "purple", size: "L" },
  { id: 14, description: "A medium-weight rag with a noticeable grain in its texture. It provides enough friction for scrubbing, but remains gentle enough for more sensitive surfaces.", condition: 6, color: "orange", size: "S" },
  { id: 15, description: "This rag has a delicate, lace-like pattern along its borders, with a soft, cotton feel in the center. It’s ideal for light, decorative cleaning or polishing delicate items.", condition: 10, color: "black", size: "S" },
  { id: 16, description: "A thick, double-layered rag with a slightly padded texture. Its fabric feels sturdy and reliable, absorbing moisture quickly without becoming too heavy to handle.", condition: 5, color: "pink", size: "S" },
  { id: 17, description: "A densely woven rag with intricate patterns embroidered throughout. Its fabric is sturdy but smooth, offering a blend of elegance and utility for both light and medium-duty cleaning.", condition: 1, color: "red", size: "M" },
  { id: 18, description: "A highly absorbent terry cloth rag with a soft, looped texture. The fabric is gentle but effective, particularly suited for drying and polishing without leaving streaks.", condition: 2, color: "rainbow", size: "S" },
  { id: 19, description: "A tough, burlap-style rag with a coarse texture. Its fabric is designed for scrubbing, making it perfect for heavy-duty jobs where a little friction is necessary.", condition: 3, color: "white", size: "L" },
  { id: 20, description: "A finely knit rag with a soft, plush surface that feels gentle on the skin. It’s ideal for polishing fine furniture or glass, leaving no marks behind.", condition: 2, color: "yellow", size: "M" }
]

client = OpenAI::Client.new(access_token: ENV['OPENAI_API_KEY'])

rags.each_with_index do |data, index|
  rag = Rag.new(
    data.merge(name: names[index])
  )

  size_label = case data[:size]
  when 'S' then 'small'
  when 'L' then 'large'
  when 'M' then 'medium'
  else
    'unknown'
  end
  full_description = "It is a rag, a piece of cloth in #{data['color']} color. Its condition is #{data[:condition]}/10 and its size is #{size_label}. #{data[:description]}"

  rag.embedding = client
    .embeddings(parameters: { model: "text-embedding-3-large", input: full_description })
    .dig("data", 0, "embedding")

  rag.save!
end
