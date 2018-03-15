  OrderLine.destroy_all
  Order.destroy_all
  Product.destroy_all
  Category.destroy_all
  Producer.destroy_all
  User.destroy_all

  farmers = ["Farmer Jill", "Farmer Bill", "Farmer Jack", "Farmer Giles", "Farmer Frank"]
  cities = ["Talofa", "Ewingsdale", "Tyagarah", "Broken Head", "Coopers Shoot", "Byron Bay"]

  puts "Creating Users"
     emails = ["john@yadoo.com", "ringo@geemail.net", "george@zoohoo.org", "paul@yadoo.com", "bill@gmail.com", "george@yadoo.com"]
     names = ["Martha Stewart", "Elvis Presley", "Carles Puigdemont", "Barack Obama", "Angela Merkel", "John Lennon", "Paul McCartney","Ringo Star","George W. Bush", "George Harrison"]
     avatars = ["http://rogovoyreport.com/wp-content/uploads/George-Harrison.jpg", "https://gwbcenter.imgix.net/legacy/-%20USE%20THIS%20ONE.jpg?w=200&h=200&fit=facearea&faceindex=1&facepad=3&mask=ellipse&fm=png", "https://www.whitehouse.gov/wp-content/uploads/2017/12/44_barack_obama1.jpg", "https://www.biography.com/.image/t_share/MTQ4Nzc2NzI2NTM1NjExNDQ3/biography-angela-merkel.jpg", "https://i.ytimg.com/vi/YkgkThdzX-8/maxresdefault.jpg", "https://cdn.tn.com.ar/sites/default/files/styles/1366x765/public/2017/12/14/paul-mccartney.jpg", "https://i0.wp.com/www.culturesonar.com/wp-content/uploads/2018/01/Ringo-Starr-Getty.jpg?resize=940%2C529"]
     emails.each {|email| User.create!(email: email, password: "1234567", fullname: names.sample)}
  puts "Users made"


  puts "Creating Producer"
    farmers.each {|farmer| Producer.create!(name: farmer, city: cities.sample)}
  puts "Producers made"


puts "Creating Categories"
    categories = ["vegetables", "fruits", "meat", "fish", "dairy & eggs", "bakery", "wine & drinks", "pantry", "deli"]
    categories.each { |category| Category.create!(name: category, subcategory: category)}
  puts "Category made"

 puts "Creating Vegetables"
    veggies = ["Carrots", "Onions", "Potatoes", "Broccoli", "Spinach", "Eggplant", "Garlic", "Corn"]
    veggies.each {|veg| Product.create!(name: veg, price: (4..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "vegetables"))}
  puts "Vegetables made"

 puts "Creating Fruits"
    fruits = ["Strawberries", "Oranges", "Apples", "Grapes", "Bananas", "Mango", "Pineapple", "Melon"]
    fruits.each {|fruit| Product.create!(name: fruit, price: (4..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "fruits"))}
  puts "Fruits made"

 puts "Creating Meats"
    meats = ["Beef", "Poultry", "Sausage", "Pork", "Lamb and mutton", "Duck", "Crocodile"]
    meats.each {|meat| Product.create!(name: meat, price: (10..25).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "meat"))}
  puts "Meats made"

 puts "Creating Fish"
    fishes = ["Salmon", "Tuna", "Cod", "Catfish", "Octopus", "Bass", "Crab Legs", "Swordfish"]
    fishes.each {|fish| Product.create!(name: fish, price: (10..25).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "fish"))}
  puts "Fish made"

puts "Creating Dairy & Eggs"
    dairies = ["Eggs", "Milk", "Cheese", "Yogurt", "Butter", "Ice-Cream", "Sour Cream", "Cream Cheese"]
    dairies.each {|dairy| Product.create!(name: dairy, price: (4..8).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "dairy & eggs"))}
  puts "Dairy & Eggs made"

puts "Creating Bakery"
    bakes = ["Croissants", "Baguettes", "Muffins", "Cakes", "Cupcakes", "Sandwhich Loaves", "Burger Buns", "Tortillas"]
    bakes.each {|bake| Product.create!(name: bake, price: (4..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "bakery"))}
  puts "Bakery made"

  puts "Creating Wine & Drinks"
    drinks = ["Red Wine", "White Wine", "Beer", "Non-alcoholic Beer", "Juices", "Teas", "Coffee", "Protein Shakes"]
    drinks.each {|drink| Product.create!(name: drink, price: (10..20).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "wine & drinks"))}
  puts "Wine & Drinks made"

  puts "Creating Pantry"
    pantries = ["Pasta", "Flour", "Wheat", "Cereal", "Spices", "Oils", "Rice", "Cous Cous"]
    pantries.each {|pantry| Product.create!(name: pantry, price: (4..12).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "pantry"))}
  puts "Pantry made"

  puts "Creating Deli"
    delis = ["Potatoe Salad", "Roasted Squash", "Roast Beef", "Green Bean Soup", "Saffron Rice", "Pad Thai", "Smoked Turkey", "Mac & Cheese"]
    delis.each {|deli| Product.create!(name: deli, price: (8..12).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.find_by(name: farmers.sample), category: Category.find_by(name: "deli"))}
  puts "Deli made"


  puts "Creating Orders"
    Order.create!(amount: 40, user: User.last)
  puts "Orders made"

  puts "Creating Order Lines"
    OrderLine.create!(quantity: 12, order: Order.last, product: Product.last)
    OrderLine.create!(quantity: 10, order: Order.first, product: Product.first)
  puts "Order Lines made"


