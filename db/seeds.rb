names = [
  "Andromeda", "Antlia", "Apus", "Aquarius", "Aquila", "Ara", "Aries", "Auriga",
  "Boötes", "Caelum", "Camelopardalis", "Cancer", "Canes Venatici", "Canis Major",
  "Canis Minor", "Capricornus", "Carina", "Cassiopeia", "Centaurus", "Cepheus"
]

# Predefined data for Rags
rags = [
  { id: 1, description: "A finely woven rag with intricate embroidery along the edges, making it ideal for delicate tasks. Its texture is smooth but slightly firm, perfect for handling light cleaning duties.", rate: 5, color: "red", size: "S" },
  { id: 2, description: "This rag has a thick, quilted texture that feels plush to the touch. It offers excellent absorption and can handle larger spills or scrubbing tasks with ease.", rate: 7, color: "blue", size: "M" },
  { id: 3, description: "A rugged, coarse fabric with reinforced stitching, designed for heavy-duty work. Despite its rough surface, it is durable and can endure tough scrubbing without tearing.", rate: 9, color: "green", size: "L" },
  { id: 4, description: "Soft to the touch, with a gentle velvety texture, this rag feels luxurious and is perfect for polishing delicate surfaces without leaving any streaks or lint.", rate: 8, color: "yellow", size: "S" },
  { id: 5, description: "A thin and lightweight rag with a silky texture, making it suitable for quick dusting and polishing tasks. The fabric is flexible, allowing it to reach tight corners.", rate: 6, color: "purple", size: "M" },
  { id: 6, description: "This rag features a highly absorbent microfiber material that excels at trapping dust and dirt. Its ultra-soft fibers are perfect for sensitive surfaces like glass or electronics.", rate: 10, color: "orange", size: "L" },
  { id: 7, description: "A durable rag with a woven fabric, featuring fine detailing in the stitching. The surface has a subtle texture, which makes it effective for cleaning without scratching.", rate: 2, color: "black", size: "S" },
  { id: 8, description: "A plush, thick rag that feels heavy and substantial in hand. The soft pile offers maximum absorbency, and it works well for wiping down surfaces after washing.", rate: 9, color: "white", size: "M" }, #
  { id: 9, description: "A rough, textured rag with a grid-like pattern in the fabric. The slightly abrasive surface is ideal for scrubbing and removing tough grime.", rate: 2, color: "pink", size: "L" },
  { id: 10, description: "A lightweight rag with a smooth, almost slippery texture, making it ideal for quick dusting and cleaning fragile items. It glides across surfaces effortlessly.", rate: 5, color: "green", size: "S" },
  { id: 11, description: "This rag has a smooth, satin-like surface with a tight weave, ideal for polishing metals and other reflective surfaces. It leaves a shine without leaving residue.", rate: 8, color: "grey", size: "S" },
  { id: 12, description: "This rag has a thick, towel-like feel with a knobby texture. It’s perfect for absorbing large amounts of liquid and can be used for various cleaning tasks.", rate: 7, color: "yellow", size: "M" },
  { id: 13, description: "A rag made from a fine, tightly woven fabric that feels sleek to the touch. The material is durable yet flexible, making it versatile for both wiping and polishing.", rate: 9, color: "purple", size: "L" },
  { id: 14, description: "A medium-weight rag with a noticeable grain in its texture. It provides enough friction for scrubbing, but remains gentle enough for more sensitive surfaces.", rate: 6, color: "orange", size: "S" },
  { id: 15, description: "This rag has a delicate, lace-like pattern along its borders, with a soft, cotton feel in the center. It’s ideal for light, decorative cleaning or polishing delicate items.", rate: 10, color: "black", size: "S" },
  { id: 16, description: "A thick, double-layered rag with a slightly padded texture. Its fabric feels sturdy and reliable, absorbing moisture quickly without becoming too heavy to handle.", rate: 5, color: "pink", size: "S" },
  { id: 17, description: "A densely woven rag with intricate patterns embroidered throughout. Its fabric is sturdy but smooth, offering a blend of elegance and utility for both light and medium-duty cleaning.", rate: 1, color: "red", size: "M" },
  { id: 18, description: "A highly absorbent terry cloth rag with a soft, looped texture. The fabric is gentle but effective, particularly suited for drying and polishing without leaving streaks.", rate: 2, color: "rainbow", size: "S" },
  { id: 19, description: "A tough, burlap-style rag with a coarse texture. Its fabric is designed for scrubbing, making it perfect for heavy-duty jobs where a little friction is necessary.", rate: 3, color: "white", size: "L" },
  { id: 20, description: "A finely knit rag with a soft, plush surface that feels gentle on the skin. It’s ideal for polishing fine furniture or glass, leaving no marks behind.", rate: 2, color: "yellow", size: "M" }
]

rags.each_with_index do |rag, index|
  Rag.create!(
    rag.merge(name: names[index])
  )
end
