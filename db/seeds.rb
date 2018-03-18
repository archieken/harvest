  OrderLine.destroy_all
  Ingredient.destroy_all
  Recipe.destroy_all
  Order.destroy_all
  Product.destroy_all
  Category.destroy_all
  Producer.destroy_all
  Contact.destroy_all
  User.destroy_all

  farmers = ["Jill Hawkins", "Bryce Carrell", "Sally Norris", "Tilly Bay", "Trudi Baker", "Jenny Block"]
  cities = ["Talofa", "Ewingsdale", "Tyagarah", "Broken Head", "Coopers Shoot", "Byron Bay"]


#types = farmer, butcher, fishermen.


  puts "Creating Users"
     emails = ["john@yadoo.com", "ringo@geemail.net", "george@zoohoo.org", "paul@yadoo.com", "bill@gmail.com", "george@yadoo.com"]
     names = ["Martha Stewart", "Elvis Presley", "Carles Puigdemont", "Barack Obama", "Angela Merkel", "John Lennon", "Paul McCartney","Ringo Star","George W. Bush", "George Harrison"]
     avatars = ["http://rogovoyreport.com/wp-content/uploads/George-Harrison.jpg", "https://gwbcenter.imgix.net/legacy/-%20USE%20THIS%20ONE.jpg?w=200&h=200&fit=facearea&faceindex=1&facepad=3&mask=ellipse&fm=png", "https://www.whitehouse.gov/wp-content/uploads/2017/12/44_barack_obama1.jpg", "https://www.biography.com/.image/t_share/MTQ4Nzc2NzI2NTM1NjExNDQ3/biography-angela-merkel.jpg", "https://i.ytimg.com/vi/YkgkThdzX-8/maxresdefault.jpg", "https://cdn.tn.com.ar/sites/default/files/styles/1366x765/public/2017/12/14/paul-mccartney.jpg", "https://i0.wp.com/www.culturesonar.com/wp-content/uploads/2018/01/Ringo-Starr-Getty.jpg?resize=940%2C529"]
     emails.each {|email| User.create!(email: email, password: "1234567", fullname: names.sample)}
  puts "Users made"


  puts "Creating Producers"

  puts "Creating Farmers"
    Producer.create!(speciality: "farmer", name: "Jill Hawkins", city: cities.sample, photo: "http://cdn.modernfarmer.com/wp-content/uploads/2015/01/farmingwomen_hero.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "farmer", name: "Bryce Carrell", city: cities.sample, photo: "https://regmedia.co.uk/2015/05/01/free_range_chicken_and_farmer_photo_via_shutterstock.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "farmer", name: "Sally Norris", city: cities.sample, photo: "http://www.portlandfarmersmarket.org/wp-content/uploads/2014/12/DeNoble-Farms1-1024x683.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "farmer", name: "Tilly Bay", city: cities.sample, photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "farmer", name: "Forest Baker", city: cities.sample, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "farmer", name: "Jenny Block", city: cities.sample, photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  puts "Farmers made"


  puts "Creating butchers"
    Producer.create!(speciality: "butcher", name: "Jill Hawkins", city: cities.sample, photo: "http://cdn.modernfarmer.com/wp-content/uploads/2015/01/farmingwomen_hero.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "butcher", name: "Bryce Carrell", city: cities.sample, photo: "https://regmedia.co.uk/2015/05/01/free_range_chicken_and_farmer_photo_via_shutterstock.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "butcher", name: "Sally Norris", city: cities.sample, photo: "http://www.portlandfarmersmarket.org/wp-content/uploads/2014/12/DeNoble-Farms1-1024x683.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "butcher", name: "Tilly Bay", city: cities.sample, photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "butcher", name: "Forest Baker", city: cities.sample, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "butcher", name: "Jenny Block", city: cities.sample, photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  puts "Butchers made"

  puts "Creating fishermen"
    Producer.create!(speciality: "fishermen", name: "Jill Hawkins", city: cities.sample, photo: "http://cdn.modernfarmer.com/wp-content/uploads/2015/01/farmingwomen_hero.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "fishermen", name: "Bryce Carrell", city: cities.sample, photo: "https://regmedia.co.uk/2015/05/01/free_range_chicken_and_farmer_photo_via_shutterstock.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "fishermen", name: "Sally Norris", city: cities.sample, photo: "http://www.portlandfarmersmarket.org/wp-content/uploads/2014/12/DeNoble-Farms1-1024x683.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "fishermen", name: "Tilly Bay", city: cities.sample, photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "fishermen", name: "Forest Baker", city: cities.sample, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "fishermen", name: "Jenny Block", city: cities.sample, photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  puts "Fisher made"

  puts "Creating Dairy and Egg Farmers"
    Producer.create!(speciality: "dairy", name: "Jill Hawkins", city: cities.sample, photo: "http://cdn.modernfarmer.com/wp-content/uploads/2015/01/farmingwomen_hero.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "dairy", name: "Bryce Carrell", city: cities.sample, photo: "https://regmedia.co.uk/2015/05/01/free_range_chicken_and_farmer_photo_via_shutterstock.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "dairy", name: "Sally Norris", city: cities.sample, photo: "http://www.portlandfarmersmarket.org/wp-content/uploads/2014/12/DeNoble-Farms1-1024x683.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "dairy", name: "Tilly Bay", city: cities.sample, photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "dairy", name: "Forest Baker", city: cities.sample, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "dairy", name: "Jenny Block", city: cities.sample, photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  puts "D&G Farmers made"

    puts "Creating bakers"
    Producer.create!(speciality: "baker", name: "Mary Berry", city: cities.sample, photo: "http://assets.goodhousekeeping.co.uk/main/embedded/35151/mary-berry-everyday__large.jpg", description: "Mary Berry trained at The Cordon Bleu in Paris and Bath School of Home Economics. In the swinging '60s she became the cookery editor of Housewife magazine, followed by Ideal Home magazine.")
    Producer.create!(speciality: "baker", name: "Bryce Carrell", city: cities.sample, photo: "https://regmedia.co.uk/2015/05/01/free_range_chicken_and_farmer_photo_via_shutterstock.jpg", description: "Bryce Carrell trained at The Cordon Bleu in Paris and Bath School of Home Economics. In the swinging '60s she became the cookery editor of Housewife magazine, followed by Ideal Home magazine.")
    Producer.create!(speciality: "baker", name: "Sally Norris", city: cities.sample, photo: "http://www.portlandfarmersmarket.org/wp-content/uploads/2014/12/DeNoble-Farms1-1024x683.jpg", description: "Sally Norris trained at The Cordon Bleu in Paris and Bath School of Home Economics. In the swinging '60s she became the cookery editor of Housewife magazine, followed by Ideal Home magazine.")
    Producer.create!(speciality: "baker", name: "Tilly Bay", city: cities.sample, photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Tilly Bay trained at The Cordon Bleu in Paris and Bath School of Home Economics. In the swinging '60s she became the cookery editor of Housewife magazine, followed by Ideal Home magazine.")
    Producer.create!(speciality: "baker", name: "Forest Baker", city: cities.sample, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Forest Baker trained at The Cordon Bleu in Paris and Bath School of Home Economics. In the swinging '60s she became the cookery editor of Housewife magazine, followed by Ideal Home magazine.")
    Producer.create!(speciality: "baker", name: "Jenny Block", city: cities.sample, photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Jenny Block trained at The Cordon Bleu in Paris and Bath School of Home Economics. In the swinging '60s she became the cookery editor of Housewife magazine, followed by Ideal Home magazine.")
  puts "Bakers made"

    puts "Creating winemakers"
    Producer.create!(speciality: "winemaker", name: "Jill Hawkins", city: cities.sample, photo: "http://cdn.modernfarmer.com/wp-content/uploads/2015/01/farmingwomen_hero.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "winemaker", name: "Bryce Carrell", city: cities.sample, photo: "https://regmedia.co.uk/2015/05/01/free_range_chicken_and_farmer_photo_via_shutterstock.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "winemaker", name: "Sally Norris", city: cities.sample, photo: "http://www.portlandfarmersmarket.org/wp-content/uploads/2014/12/DeNoble-Farms1-1024x683.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "winemaker", name: "Tilly Bay", city: cities.sample, photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "winemaker", name: "Forest Baker", city: cities.sample, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "winemaker", name: "Jenny Block", city: cities.sample, photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  puts "Winemakers made"

      puts "Creating cooks"
    Producer.create!(speciality: "cook", name: "Jill Hawkins", city: cities.sample, photo: "http://cdn.modernfarmer.com/wp-content/uploads/2015/01/farmingwomen_hero.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "cook", name: "Bryce Carrell", city: cities.sample, photo: "https://regmedia.co.uk/2015/05/01/free_range_chicken_and_farmer_photo_via_shutterstock.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "cook", name: "Sally Norris", city: cities.sample, photo: "http://www.portlandfarmersmarket.org/wp-content/uploads/2014/12/DeNoble-Farms1-1024x683.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "cook", name: "Tilly Bay", city: cities.sample, photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "cook", name: "Forest Baker", city: cities.sample, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "cook", name: "Jenny Block", city: cities.sample, photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  puts "Winemakers made"

  puts "Creating deli creatives"
    Producer.create!(speciality: "deli", name: "Jill Hawkins", city: cities.sample, photo: "http://cdn.modernfarmer.com/wp-content/uploads/2015/01/farmingwomen_hero.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "deli", name: "Bryce Carrell", city: cities.sample, photo: "https://regmedia.co.uk/2015/05/01/free_range_chicken_and_farmer_photo_via_shutterstock.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "deli", name: "Sally Norris", city: cities.sample, photo: "http://www.portlandfarmersmarket.org/wp-content/uploads/2014/12/DeNoble-Farms1-1024x683.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "deli", name: "Tilly Bay", city: cities.sample, photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "deli", name: "Forest Baker", city: cities.sample, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
    Producer.create!(speciality: "deli", name: "Jenny Block", city: cities.sample, photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  puts "Deli creatives made"




  puts "Producers made"

puts "Creating Categories"
    categories = ["vegetables", "fruits", "meat", "fish", "dairy & eggs", "bakery", "wine & drinks", "pantry", "deli"]
    categories.each { |category| Category.create!(name: category, subcategory: category)}
  puts "Category made"

 puts "Creating Vegetables"
    veggies = ["Carrots", "Onions", "Potatoes", "Broccoli", "Spinach", "Eggplant", "Garlic", "Corn"]
    photos = ["https://i.pinimg.com/564x/54/77/3c/54773c097d987739fe679bf9803d5182.jpg", "https://i.pinimg.com/564x/9f/16/b1/9f16b1e1984fe45281993aaacaf5248d.jpg", "https://i.pinimg.com/564x/5b/2a/9f/5b2a9f24e3cd05b578f4b71300a47554.jpg", "https://i.pinimg.com/564x/a1/40/56/a1405683aa166e558cc4be7a04d42a2b.jpg", "https://i.pinimg.com/564x/9f/58/0a/9f580a12fd41a3af0b8dbd392667f597.jpg", "https://i.pinimg.com/564x/5b/e4/ab/5be4ab40e298fc84e4ec6f74b71e49da.jpg", "https://i.pinimg.com/564x/6d/94/ba/6d94bafda606a28b0911b2bb1fcc6003.jpg", "https://i.pinimg.com/564x/6a/ff/0e/6aff0e6aeb1919c3748c508a710f6f9c.jpg"]
    veggies.each_with_index {|veg, index| Product.create!(name: veg, price: (4..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "vegetables"), photo: photos[index])}
  puts "Vegetables made"

 puts "Creating Fruits"
    fruits = ["Strawberries", "Oranges", "Apples", "Grapes", "Bananas", "Pineapple", "Melon"]
    photos = ["https://i.pinimg.com/564x/d6/e6/6e/d6e66e5cb74009af7f8d9b261c222db7.jpg", "https://i.pinimg.com/564x/a4/1c/d7/a41cd7b5043b03d2d0cb2c44db97d0a6.jpg", "https://i.pinimg.com/564x/f8/47/a6/f847a694c0aa8dbd072868fa06715bf3.jpg", "https://i.pinimg.com/564x/d8/46/c5/d846c57d5a701a6d168bcffb786434d2.jpg", "https://78.media.tumblr.com/tumblr_lmewvhjrMF1qir91zo1_400.jpg", "https://i.pinimg.com/564x/c3/9c/d6/c39cd67be06f0431a31a9bebf7358424.jpg", "https://i.pinimg.com/564x/fa/81/eb/fa81eb2fdeb0cd95fb47af866b0dcacf.jpg
"]
    fruits.each_with_index {|fruit, index| Product.create!(name: fruit, price: (4..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "fruits"), photo: photos[index])}
  puts "Fruits made"

 puts "Creating Meats"
    meats = ["Beef", "Poultry", "Sausage", "Pork", "Lamb and mutton"]
    photos = ["https://i.pinimg.com/564x/b2/72/d1/b272d1d66eed9334ede5f8aff83e63a4.jpg", "https://i.pinimg.com/564x/b0/1a/d6/b01ad69e49920325e7c5c4243fc092a6.jpg", "https://i.pinimg.com/564x/57/93/60/5793605bb37a1599464a08b39095f6b8.jpg", "https://i.pinimg.com/564x/23/4c/60/234c605701e8e30be5beddb12f39e9f3.jpg", "https://i.pinimg.com/564x/37/c8/96/37c8964a5a467bd07c3b0c8793196382.jpg"]
    meats.each_with_index {|meat, index| Product.create!(name: meat, price: (10..25).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "meat"), photo: photos[index])}
  puts "Meats made"

 puts "Creating Fish"
    fishes = ["Salmon", "Swordfish", "Crab Legs", "Octopus", "Tuna", "Cod"]
    photos = ["https://i.pinimg.com/564x/f1/2b/aa/f12baa0384ca80d373bc35b5f50858bf.jpg", "https://i.pinimg.com/564x/3e/55/b5/3e55b565c620570d635b5dd10984994d.jpg", "https://i.pinimg.com/564x/45/ed/92/45ed92888c3e9ddc65128429e19eb6f6.jpg", "https://i.pinimg.com/564x/2d/0a/c8/2d0ac89383ce946f2a0c4dadb72efa2a.jpg", "https://i.pinimg.com/564x/fb/96/24/fb9624a0654c74d9e7d90a7699b658c8.jpg", "https://i.pinimg.com/564x/62/c7/f9/62c7f93f1e5133b0191693bd8ce26bd8.jpg"]
    fishes.each_with_index {|fish, index| Product.create!(name: fish, price: (10..25).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "fish"), photo: photos[index])}
  puts "Fish made"

puts "Creating Dairy & Eggs"
    dairies = ["Eggs", "Milk", "Cheese", "Yogurt", "Butter", "Ice-Cream"]
    photos = ["https://i.pinimg.com/564x/78/72/7f/78727f8fa0cea4fb6c7d0c7da3126d06.jpg", "https://i.pinimg.com/564x/78/2e/4f/782e4fcdf9934f4c9f28d91d29d06aa7.jpg", "https://i.pinimg.com/564x/ab/c7/ed/abc7ed2b895fa7836ff31f7db273fd70.jpg", "https://i.pinimg.com/564x/d8/53/e3/d853e3f2b542ec8a3560a8fa42cd7c2f.jpg", "http://static.gofugyourself.com/uploads/2016/10/freshly-made-butter.jpg", "https://i.pinimg.com/564x/63/aa/ae/63aaae89a6482934b7dbca964847cf12.jpg"]
    dairies.each_with_index {|dairy, index| Product.create!(name: dairy, price: (4..8).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "dairy & eggs"), photo: photos[index])}
  puts "Dairy & Eggs made"

puts "Creating Bakery"
    bakes = ["Croissants", "Baguettes", "Muffins", "Cakes", "Cupcakes", "Tortillas"]
    photos = ["https://i.pinimg.com/564x/bb/d5/aa/bbd5aa58be18aaab6052deda215e98b5.jpg", "https://i.pinimg.com/564x/62/08/c4/6208c48a52bf4b6c78eec88fbac0e03a.jpg", "https://i.pinimg.com/564x/17/51/5a/17515a3d8e5fd796ec881607d4129184.jpg", "https://i.pinimg.com/564x/da/68/1a/da681ab51ef3381b47a598cc930ebf38.jpg", "https://i.pinimg.com/564x/c8/7b/9d/c87b9d345ad3abba03441821eddff4c5.jpg"]
    bakes.each_with_index {|bake, index| Product.create!(name: bake, price: (4..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "bakery"), photo: photos[index])}
  puts "Bakery made"

  puts "Creating Wine & Drinks"
    drinks = ["Red Wine", "White Wine", "Coffee", "Juice", "Tea"]
    photos = ["https://i.pinimg.com/564x/f7/32/fa/f732faaf4bf513286abd857cc89d5b1a.jpg", "https://i.pinimg.com/564x/f8/c0/a1/f8c0a1c2d3458a71c2d22bc89901743c.jpg", "https://i.pinimg.com/564x/4c/89/92/4c89923f85ac4b515d01c684005085ae.jpg", "https://i.pinimg.com/564x/c1/b5/2d/c1b52db68a50e248a01aeb7604e08cef.jpg", "https://i.pinimg.com/564x/70/2c/9d/702c9dc332d2a4f3c01d441427ad8fab.jpg"]
    drinks.each_with_index {|drink, index| Product.create!(name: drink, price: (10..20).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "wine & drinks"), photo: photos[index])}
  puts "Wine & Drinks made"

  puts "Creating Pantry"
    pantries = ["Pasta", "Flour", "Wheat", "Cereal", "Spices", "Oils", "Rice", "Cous Cous"]
    photos = ["https://i.pinimg.com/564x/7a/2d/5d/7a2d5dddef422378df71b4cb55238cc4.jpg", "https://i.pinimg.com/564x/13/46/b3/1346b39135a3c239d16267767aad2136.jpg", "https://i.pinimg.com/564x/94/6f/e8/946fe8dd991b5c8f7771cd081132d155.jpg", "https://i.pinimg.com/564x/32/12/42/3212424b6fd2621f20b8d22e1aa76290.jpg", "https://i.pinimg.com/564x/04/55/1a/04551ae3a5456c17ec6f1084721bde6e.jpg", "https://i.pinimg.com/564x/b0/54/52/b054521c8dc23269029a612429b9dd7b.jpg", "https://i.pinimg.com/564x/5a/42/bb/5a42bb7dc6f32a47dea03f171ca705d2.jpg", "https://i.pinimg.com/564x/43/20/ba/4320baddae363c756e997c0ed3be57d3.jpg"]
    pantries.each_with_index {|pantry, index| Product.create!(name: pantry, price: (4..12).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "pantry"), photo: photos[index])}
  puts "Pantry made"

  puts "Creating Deli"
    delis = ["Potatoe Salad", "Roasted Squash", "Roast Beef", "Green Bean Soup", "Saffron Rice", "Pad Thai", "Smoked Turkey", "Mac & Cheese"]
    photos = ["https://i.pinimg.com/564x/49/92/80/499280d39ba17871d64b52b23d63be70.jpg", "https://i.pinimg.com/564x/93/ed/88/93ed883b58507ad4bac65a68bec32280.jpg", "https://i.pinimg.com/564x/21/25/d8/2125d8458924726516adf5d00766289f.jpg
", "https://i.pinimg.com/564x/13/71/d6/1371d674ea36042ae71251abba69bcab.jpg", "https://i.pinimg.com/564x/cd/b5/3d/cdb53d6f07474865e84bb7f3ba7a99f1.jpg", "https://i.pinimg.com/564x/d5/a3/1b/d5a31b80b94618cf945b8f29742f68fe.jpg", "https://i.pinimg.com/564x/dc/c1/18/dcc1184c4f4a4f10da0fdb2412e8a8cd.jpg", "https://i.pinimg.com/564x/6c/ea/d1/6cead1dc0d2c25a6d951326852ab1098.jpg"]
    delis.each_with_index {|deli, index| Product.create!(name: deli, price: (8..12).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "deli"), photo: photos[index])}
  puts "Deli made"


  puts "Creating Orders"
    Order.create!(amount: 40, user: User.last)
  puts "Orders made"

  puts "Creating Order Lines"
    OrderLine.create!(quantity: 12, order: Order.last, product: Product.last)
    OrderLine.create!(quantity: 10, order: Order.first, product: Product.first)
  puts "Order Lines made"


    puts "Create Recipes"

    #cheese baguette
    recipe =Recipe.new(title: "Cheese Baguette", description: "An easy meal to prepare.", instructions: "Step 1: slice some cheese, Step 2: add it to the baguette", difficulty: 2, photo: "http://assets.kraftfoods.com/recipe_images/Turkey-Havarti-Cheese-Baguette-54771KC.jpg", producer: Producer.last)
    recipe.products << Product.find_by(name: "Baguettes")
    recipe.products << Product.find_by(name: "Cheese")
    recipe.save!

    #Ratatouille
    recipe =Recipe.new(title: "Ratatouille", description: "Enjoy this superhealthy classic French vegetarian dish - counts as 4 of 5-a-day", instructions: "Step 1: Cut the aubergines in half lengthways. Place them on the board, cut side down, slice in half lengthways again and then across into 1.5cm chunks. Cut off the courgettes ends, then across into 1.5cm slices. Step 2: Peel the peppers from stalk to bottom. Hold upright, cut around the stalk, then cut into 3 pieces. Cut away any membrane, then chop into bite-size chunks.", difficulty: 4, photo: "https://media1.s-nbcnews.com/j/newscms/2017_33/1275547/ratatouille-today-tease-170815_5107597557ae61b6e0e16e85dc993576.today-inline-large.jpg", producer: Producer.last)
    recipe.products << Product.find_by(name: "Eggplant")
    recipe.products << Product.find_by(name: "Cheese")
    recipe.products << Product.find_by(name: "Onions")
    recipe.products << Product.find_by(name: "Garlic")
    recipe.products << Product.find_by(name: "Carrots")
    recipe.save!

     #pancakes
    recipe =Recipe.new(title: "Pancakes", description: "Learn a skill for life with our foolproof crêpe recipe that ensures perfect pancakes every time - elaborate flip optional", instructions: "Step 1: Put the flour, eggs, milk, 1 tbsp oil and a pinch of salt into a bowl or large jug, then whisk to a smooth batter. Set aside for 30 mins to rest if you have time, or start cooking straight away.", difficulty: 1, photo: "https://static01.nyt.com/images/2017/03/24/dining/24COOKING-CLASSICPANCAKES/24COOKING-CLASSICPANCAKES-videoSixteenByNineJumbo1600.jpg", producer: Producer.last)
    recipe.products << Product.find_by(name: "Eggs")
    recipe.products << Product.find_by(name: "Flour")
    recipe.products << Product.find_by(name: "Milk")
    recipe.save!

    #fruit salad
    recipe =Recipe.new(title: "Fruit Salad", description: "A classic dessert. Can be eaten all year round", instructions: "Step 1: Cut the fruit up. Step 2: Mix the fruits together.", difficulty: 2, photo: "http://imgs.peasandfigs.co.uk/2014-7-6/16732_15233_fruitsalad.jpg", producer: Producer.last)
    ["Strawberries", "Oranges", "Apples", "Grapes", "Bananas", "Pineapple", "Melon"].each {|fruit| recipe.products << Product.find_by(name: fruit)}
    recipe.save!

    #avacado and toast
    recipe =Recipe.new(title: "Smashed avocado on toast", description: "So simple and delicious, this is perfect when you need a quick and nutritious breakfast or snack.", instructions: "", difficulty: 2, photo: "https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/smashed_avocado_on_toast_89082_16x9.jpg", producer: Producer.last)
    recipe.products << Product.find_by(name: "Baguettes")
    recipe.save!


    puts "Recipes made"




