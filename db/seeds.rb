Profile.destroy_all
User.destroy_all
Product.destroy_all
Category.destroy_all
Purchase.destroy_all


#user
user1 = User.create( {email: "admin@mail.com", password: "123456"} )

#categories

ornaments = Category.create!(name: "Ornaments")
lights = Category.create!(name: "Lights")
trees = Category.create!(name: "Trees")
tree_stands = Category.create!(name: "Tree Stands")
kittens = Category.create!(name: "Kittens")
garlands = Category.create!(name: "Garland")

product1 = Product.create!(
  {
  name: "Christmas balls",
  price: 2 ,
  description: "We have Christmas balls in every color and every shape to festoon your tree.",
  category_id: ornaments.id,
  image_url: "#"
})


product2 = Product.create! (
  {name: "Tree lights",
   price: 15 ,
    description:"Lit up your tree with these lights and leave a wonderful impression on your friends and family.",
    category_id: lights.id,
    image_url: "#"} )

product3 = Product.create! (
  {name: "Christmas Tree",
   price: 150 ,
   description: "Our trees are grown and imported from the lush mountains of Switzerland, we reserve only the highest quality for our customers.",
   category_id: trees.id ,
   image_url: "#"} )

product4 = Product.create! (
  {name: "Tree stand",
    price:20 ,
    description: "Robust pieces that will make sure your tree stands tall during the festive period.",
    category_id: tree_stands.id,
    image_url: "#"} )

product5 = Product.create! (
  {name: "Kitten",
    price: 100 ,
    description: "The cutest little kittens ready to put a smile on your face. We are looking for individuals with a genuine love for cats and kittens.",
    category_id: kittens.id ,
    image_url: "#"} )

product6 = Product.create! (
  {name: "Flower Garland",
    price: 25 ,
    description: "Intricately designed flower garlands.",
    category_id: garlands.id,
    image_url: "#"} )

product7 = Product.create! (
  {name: "Socks",
  price: 6 ,
  description: "Warm and fluffy. Get your Santa's socks today before stock runs out.",
  category_id: ornaments.id,
  image_url: "#"} )
