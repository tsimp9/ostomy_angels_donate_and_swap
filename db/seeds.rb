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
User.create!(name: "T'Challa", email: "BlackPanther@wakanda.com", password: "testing")

shipping_addresses = [
  { street1: "10 Imaginary Rd.",
    street2: "",
    city: "Greenville",
    state: "SC",
    zip: "29607",
    user_id: User.first
  },
 { street1: "425 Washington Ave",
    street2: "",
    city: "Washington",
    state: "DC",
    zip: "61300",
    user_id: User.second
  },
  { street1: "400 Scandal Lane",
    street2: "",
    city: "Washington",
    state: "DC",
    zip: "61300",
    user_id: User.third
  }, 
  { street1: "222 Time Ave",
    street2: "",
    city: "Anderson",
    state: "SC",
    zip: "29621",
    user_id: User.fourth
  },
  { street1: "5000 Marvel Lane",
    street2: "",
    city: "Oakland",
    state: "CA",
    zip: "94577",
    user_id: User.fifth
  }
]

shipping_addresses.each do |shipping_address|
    new_shipping_address = ShippingAddress.create!(shipping_address)
end


supplies = [
  { category: "Bags/Pouches",
    product_name: "New Image Two-Piece Closed Ostomy Pouch",
    brand: "Hollister",
    product_id: "18372",
    description: "Beige closed-end pouches, 1-3/4 inches or 44mm opening, color match green",
    image_name: "hollister_18372.jpg",
    user_id: User.first
  },
  { category: "Bags/Pouches",
    product_name: "Premier One-Piece Drainable Ostomy Pouch",
    brand: "Hollister",
    product_id: "8940",
    description: "Pre-sized 1-9/16 in, 12 inch length",
    image_name: "hollister_8940.jpg",
    user_id: User.fourth
  },
  { category: "Bags/Pouches",
    product_name: "New Image Lock N Roll Microseal Closure Drainable Pouches",
    brand: "Hollister",
    product_id: "18194",
    description: "Transparent two piece, 2-3/4 inches flange (Blue), integrated (Velcro-like) closure system with odor barrier",
    image_name: "hollister_18194.jpg",
    user_id: User.third
  },
  { category: "Adhesive Removers",
    product_name: "Brava Adhesive Remover Spray 1.7 oz Bottle",
    brand: "Coloplast",
    product_id: "120105",
    description: "1.7 oz (50ml) Spray Bottle",
    image_name: "coloplast_120105_adhesive_remover.jpeg",
    user_id: User.second
  },
  { category: "Rings",
    product_name: "Adapt CeraRing Barrier Rings",
    brand: "Hollister",
    product_id: "8805",
    description: "Size - 2 inches/4.5mm width Ceramide-infused barrier rings (not rubber latex) designed to help support healthy skin and provide a custom fit to help prevent leakage and peristomal skin complications",
    image_name: "hollister_8805_rings.jpg",
    user_id: User.fifth
  },
  { category: "Skin Barriers (Wafers) and Convex Inserts",
    product_name: "New Image FormaFlex Shape-to-Fit Skin Barriers",
    brand: "Hollister",
    product_id: "14104",
    description: "2-3/4 inches/70 mm flange, up to 2-1/4 inches/57 mm, blue match wafers",
    image_name: "hollister_14104_wafer.jpg",
    user_id: User.second
  },
  { category: "Stoma Caps",
    product_name: "SUR-FIT® Natura® Flange Cap with Filter, 1-3/4 Flange",
    brand: "Convatec",
    product_id: "401909",
    description: "Opaque stoma cap with 1-sided comfort panel",
    image_name: "convatec_401909_cap.jpeg",
    user_id: User.second
  },
  { category: "Paste",
    product_name: "Osto-Paste",
    brand: "Montreal Ostomy (BE/MO)",
    product_id: "(MO)OSTOPASTE",
    description: "4 oz tube of no sting and alcohol-free paste designed for use on irritated and sore skin",
    image_name: "montreal_ostopaste.png",
    user_id: User.first
  },
  { category: "Sheets and Strips",
    product_name: "Skin Barrier Sheet",
    brand: "Safe n Simple",
    product_id: "SNS21605",
    description: "Skin friendly water resistant/hydrocolloid sheet that protects the skin from stoma output and gentle on skin",
    image_name: "safensimple_sheet_sns21605.png",
    user_id: User.fourth
  },
  { category: "Skin Prep Wipes",
    product_name: "Skin Prep Protective Dressings - Wipes",
    brand: "Smith & Nephew",
    product_id: "420400",
    description: "Protective dressing that forms a protective film to help tapes and films adhere better",
    image_name: "smith_wipes_420400.jpg",
    user_id: User.third
  },
  { category: "Powders",
    product_name: "Ostomy Protective Powder",
    brand: "Cardinal Health Essentials",
    product_id: "ZR1OZOPA",
    description: "1-oz bottle pectin-based powder protects irritated skin around the stoma. Increases wear time. Absorbs moisture.",
    image_name: "cardinal_powder.jpeg",
    user_id: User.second
  },
  { category: "Deodorants",
    product_name: "Brava Lubricating Deodorant",
    brand: "Coloplast",
    product_id: "12060BX",
    description: "0.25-oz satchets",
    image_name: "brava_deodorant_satchet.jpg",
    user_id: User.first
  },
  { category: "Deodorants",
    product_name: "Devko Deodorant Tablets",
    brand: "Parthenon",
    product_id: "PADEVCO",
    description: "Tablets for odor control inside ostomy pouches or bag liners",
    image_name: "devko_tablets.jpg",
    user_id: User.fourth
  },
  { category: "Irrigation Kits - Ostomy",
    product_name: "Visi-Flow® Irrigator with Stoma Cone",
    brand: "Convatec",
    product_id: "401989",
    description: "Designed for people with a colostomy where irrigation is indicated. Front-fill reusable bag",
    image_name: "convatec_visiflow_irrigator_401989.jpeg",
    user_id: User.third
  },
  { category: "Ostomy Accessories",
    product_name: "Ostomy Belt",
    brand: "Phoenix Ostomy",
    product_id: "PS300",
    description: "Size Medium/Large (26\"- 36\")",
    image_name: "phoenix_ostomy_belt_ps300.jpeg",
    user_id: User.second
  },
  { category: "Ostomy Accessories",
    product_name: "Biodegradable Colostomy Pouch Liners",
    brand: "Colo-Majic",
    product_id: "N/A",
    description: "Size Large to fit diameters from 2¼ inch (57mm) to 2¾ inch (70mm)",
    image_name: "colo_majic.jpg",
    user_id: User.first
  }
]

supplies.each do |supply|
    new_supply = Supply.create!(
      category: supply[:category],
      product_name: supply[:product_name],
      brand: supply[:brand],
      product_id: supply[:product_id],
      description: supply[:description],
      user_id: supply[:user_id]
    )
    new_supply.image.attach(io: File.open("lib/#{supply[:image_name]}"), filename: "#{supply[:image_name]}")
  end


