class Supply < ApplicationRecord
  belongs_to        :user, optional: true
  belongs_to :reserved_user, class_name: "User"

  has_one_attached  :image

  #An array constant for category pulldown
  CATEGORIES = ["Bags/Pouches", "Skin Barriers (Wafers) and Convex Inserts", "Stoma Caps", "Paste", "Sheets and Strips", "Rings",  "Skin Prep Wipes", "Adhesive Removers", "Skin Prep Liquids", "Powders", "Deodorants", "Appliance Cleansers", "Irrigation Sleeves", "Stoma Cones", "Irrigation Catheters", "Irrigation Bags", "Irrigation Kits - Ostomy", "Ostomy Accessories"].freeze
end
