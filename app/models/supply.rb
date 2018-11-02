class Supply < ApplicationRecord
  belongs_to :user

  #An array constant for category pulldown
  CATEGORY = ["bags/pouches", "skin barriers (wafers) and convex inserts", "stoma caps", "paste", "sheets and strips", "rings",  "skin prep wipes", "adhesive removers", "skin prep liquids", "powders", "deodorants", "appliance cleansers", "irrigation sleeves", "stoma cones", "irrigation catheters", "irrigation bags", "irrigation kits - ostomy", "ostomy accessories"].freeze
end
