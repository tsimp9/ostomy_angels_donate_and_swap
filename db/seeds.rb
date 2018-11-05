# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!(name: "Rowan Pope", email: "eli@b613.com", password: "testing")

# User.create!(name: "Olivia Pope", email: "olivia@usa.com", password: "testing1")


supplies = [
  { category: "Bags/Pouches",
    product_name: "New Image Two-Piece Closed Ostomy Pouch",
    brand: "Hollister",
    product_id: "18372",
    description: "Beige closed-end pouches, 1-3/4 inches or 44mm opening, color match green"
  },
  { category: "Bags/Pouches",
    product_name: "Premier One-Piece Drainable Ostomy Pouch",
    brand: "Hollister",
    product_id: "8040",
    description: "Pre-sized 1-9/16 in, 12 inch length"
  },
  { category: "Adhesive Removers",
    product_name: "Brava Adhesive Remover Spray 1.7 oz Bottle",
    brand: "Coloplast",
    product_id: "120205",
    description: "1.7 oz (50ml) Spray Bottle"
  }
]

supplies.each do |supply|
    supply = Supply.create!(
      category: supply[:category],
      product_name: supply[:product_name],
      brand: supply[:brand],
      product_id: supply[:product_id],
      description: supply[:description]
    )
    end