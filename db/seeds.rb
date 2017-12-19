Profile.destroy_all
Selections.destroy_all
User.destroy_all
Category.destroy_all
Purchases.destroy_all
Products.destroy_all

#users
users << User.create(
      email: []
      password: []
    )
end

#categories
categories = []
categories << Category.create!(name: "Ornaments")
categories << Category.create!(name: "Lights")
categories << Category.create!(name: "Trees")
categories << Category.create!(name: "Tree Stands")
categories << Category.create!(name: "Kittens")
categories << Category.create!(name: "Garland"
