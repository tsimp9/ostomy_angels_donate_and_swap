# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Topeka", email: "tsimp9@gmail.com", password: "tyson23")
User.create!(name: "Rowan Pope", email: "eli@b613.com", password: "testing")
User.create!(name: "Olivia Pope", email: "olivia@usa.com", password: "testing1")
User.create!(name: "Huck", email: "huck@b613.com", password: "testing3")


supplies = [
  { category: "Bags/Pouches",
    product_name: "New Image Two-Piece Closed Ostomy Pouch",
    brand: "Hollister",
    product_id: "18372",
    description: "Beige closed-end pouches, 1-3/4 inches or 44mm opening, color match green",
    image_name: "hollister_18372.jpg"
  },
  { category: "Bags/Pouches",
    product_name: "Premier One-Piece Drainable Ostomy Pouch",
    brand: "Hollister",
    product_id: "8940",
    description: "Pre-sized 1-9/16 in, 12 inch length",
    image_name: "hollister_8940.jpg"
  },
  { category: "Adhesive Removers",
    product_name: "Brava Adhesive Remover Spray 1.7 oz Bottle",
    brand: "Coloplast",
    product_id: "120105",
    description: "1.7 oz (50ml) Spray Bottle",
    image_name: "coloplast_120105_adhesive_remover.jpeg"
  },
  { category: "Rings",
    product_name: "Adapt CeraRing Barrier Rings",
    brand: "Hollister",
    product_id: "8805",
    description: "Size - 2 inches/4.5mm width Ceramide-infused barrier rings (not rubber latex) designed to help support healthy skin and provide a custom fit to help prevent leakage and peristomal skin complications",
    image_name: "hollister_8805_rings.jpg"
  },
  { category: "Skin Barriers (Wafers) and Convex Inserts",
    product_name: "New Image FormaFlex Shape-to-Fit Skin Barriers",
    brand: "Hollister",
    product_id: "14104",
    description: "2-3/4 inches/70 mm flange, up to 2-1/4 inches/57 mm, blue match wafers",
    image_name: "hollister_14104_wafer.jpg"
  },
  { category: "Stoma Caps",
    product_name: "SUR-FIT® Natura® Flange Cap with Filter, 1-3/4 Flange",
    brand: "Convatec",
    product_id: "401909",
    description: "Opaque stoma cap with 1-sided comfort panel",
    image_name: "convatec_401909_cap.jpeg"
  },
  { category: "Paste",
    product_name: "Osto-Paste",
    brand: "Montreal Ostomy (BE/MO)",
    product_id: "(MO)OSTOPASTE",
    description: "4 oz tube of no sting and alcohol-free paste designed for use on irritated and sore skin",
    image_name: "montreal_ostopaste.png"
  },
  { category: "Sheets and Strips",
    product_name: "Skin Barrier Sheet",
    brand: "Safe n Simple",
    product_id: "SNS21605",
    description: "Skin friendly water resistant/hydrocolloid sheet that protects the skin from stoma output and gentle on skin",
    image_name: "safensimple_sheet_sns21605.png"
  },
  { category: "Skin Prep Wipes",
    product_name: "Skin Prep Protective Dressings - Wipes",
    brand: "Smith & Nephew",
    product_id: "420400",
    description: "Protective dressing that forms a protective film to help tapes and films adhere better",
    image_name: "smith_wipes_420400.jpg"
  },
  { category: "Deodorants",
    product_name: "Brava Lubricating Deodorant",
    brand: "Coloplast",
    product_id: "12060BX",
    description: "0.25-oz satchets",
    image_name: "brava_deodorant_satchet.jpg"
  },
]

supplies.each do |supply|
    new_supply = Supply.create!(
      category: supply[:category],
      product_name: supply[:product_name],
      brand: supply[:brand],
      product_id: supply[:product_id],
      description: supply[:description]
    )
    new_supply.image.attach(io: File.open("tmp/#{supply[:image_name]}"), filename: "#{supply[:image_name]}")
  end