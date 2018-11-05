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
  }
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