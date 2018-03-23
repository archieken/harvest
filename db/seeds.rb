  Nutrient.destroy_all
  OrderLine.destroy_all
  Ingredient.destroy_all
  Recipe.destroy_all
  Order.destroy_all
  Product.destroy_all
  Category.destroy_all
  Producer.destroy_all
  Contact.destroy_all
  User.destroy_all

  def fat_quant(nd)
     nd.send("total_nutrients")["FAT"]["quantity"]
   end

   def fat_unit(nd)
    nd.send("total_nutrients")["FAT"]["unit"]
  end

  def calories_quant(nd)
    nd.send("total_nutrients")["ENERC_KCAL"]["quantity"]
  end

  def calories_unit(nd)
    nd.send("total_nutrients")["ENERC_KCAL"]["unit"]
  end

  def sugar_quant(nd)

   # nd.send("total_nutrients")["SUGAR"]["quantity"]
  end

  def sugar_unit(nd)
  #  nd.send("total_nutrients")["SUGAR"]["unit"]
  end

  def protein_quant(nd)
    nd.send("total_nutrients")["PROCNT"]["quantity"]
  end

  def protein_unit(nd)
    nd.send("total_nutrients")["PROCNT"]["unit"]
  end

  def sodium_quant(nd)
    nd.send("total_nutrients")["NA"]["quantity"]
  end

  def sodium_unit(nd)
    nd.send("total_nutrients")["NA"]["unit"]
  end

  def carbs_quant(nd)
    nd.send("total_nutrients")["CHOCDF"]["quantity"]
  end

  def carbs_unit(nd)
    nd.send("total_nutrients")["CHOCDF"]["unit"]
  end


  farmers = ["Jill Hawkins", "Bryce Carrell", "Sally Norris", "Tilly Bay", "Trudi Baker", "Jenny Block"]
  cities = ["Talofa", "Ewingsdale", "Tyagarah", "Broken Head", "Coopers Shoot", "Byron Bay"]
  coordinates = [[-28.6733831, 153.5384991], [-28.6389276, 153.5154017], [-28.6001738, 153.5210967], [-28.7300971, 153.5569739], [-28.6915848, 153.5517073], [-28.6468637, 153.5678767]]

  # cities.key({-28.6733831, 153.5384991}) => Talofa

#types = farmer, butcher, fishermen.


  puts "Creating Users"
     emails = ["john@yadoo.com", "ringo@geemail.net", "george@zoohoo.org", "paul@yadoo.com", "bill@gmail.com", "george@yadoo.com"]
     names = ["Elvis Presley", "Barack Obama", "Angela Merkel", "John Lennon", "Paul McCartney","Ringo Star"]
     avatars = ["http://rogovoyreport.com/wp-content/uploads/George-Harrison.jpg", "https://gwbcenter.imgix.net/legacy/-%20USE%20THIS%20ONE.jpg?w=200&h=200&fit=facearea&faceindex=1&facepad=3&mask=ellipse&fm=png", "https://www.whitehouse.gov/wp-content/uploads/2017/12/44_barack_obama1.jpg", "https://www.biography.com/.image/t_share/MTQ4Nzc2NzI2NTM1NjExNDQ3/biography-angela-merkel.jpg", "https://i.ytimg.com/vi/YkgkThdzX-8/maxresdefault.jpg", "https://cdn.tn.com.ar/sites/default/files/styles/1366x765/public/2017/12/14/paul-mccartney.jpg", "https://i0.wp.com/www.culturesonar.com/wp-content/uploads/2018/01/Ringo-Starr-Getty.jpg?resize=940%2C529"]
     users = emails.each_with_index.map {|email, index| User.create!(email: email, password: "1234567", fullname: names[index])}
  puts "Users made"


  puts "Creating Producers"


  puts "Creating Farmers"
    Producer.create!( speciality: "farmer", name: "Sally Hawkins", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1],  photo: "https://i.pinimg.com/564x/53/7d/65/537d65cf5e5b194f920a4297126d4a72.jpg", description: "Sally Darwin has been farming delicious fruits and vegetables since 1977. Her family and her decided to grow their own food and supply their neighbors.
      Favorite thing to grow is garlic, fave vegetable is kale.
")
    Producer.create!( speciality: "farmer", name: "Bryce Carrell", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "http://rosa-tv.com/wp-content/uploads/2015/09/organicheskih-produktov-e1443096808714.jpg", description: "Bryce Carell is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.
      He grew up eating food directly from his farm and is excited to share them with his community.
")
    Producer.create!( speciality: "farmer", name: "Monica Norris", city: cities[3], latitude: coordinates[3][0], longitude: coordinates[3][1], photo: "https://i.pinimg.com/564x/2b/f2/cc/2bf2cc49002ef0b974a3d512de549239.jpg", description: "Monica runs Dee River Ranch, Inc.; a family owned and operated multi-commodity farm.
      Her farm produces corn, wheat, soybeans, sunflowers, rye, forage crops, cattle, and trees, all with a heavy emphasis on conserving practices such as cover crops and no-till.")
    Producer.create!( speciality: "farmer", name: "Tilly Bay", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://i.pinimg.com/564x/9a/de/c0/9adec0636d2d95f99aaf3d7a801e62b7.jpg", description: "Tilly Bay grew has created a diversified farm and finds great joy providing for her neighbors.
      Farming philosophy: the more organic matter the better; and we are all in this together.
")
    Producer.create!( speciality: "farmer", name: "Gilbert Grape", city: cities[4], latitude: coordinates[4][0], longitude: coordinates[4][1], photo: "https://i.pinimg.com/564x/64/c0/37/64c037470148b06947d322fed39d9bf3.jpg", description: "Gilbert a farmer and owner of Foster Veg Yard, and takes a lot of pride in working for a fourth generation family farm.
      The Foster Veg Yard has than 50 years of experience providing fresh fruits and vegetables to nearby communities.")
    Producer.create!( speciality: "farmer", name: "Nicole Patterson", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://i.pinimg.com/564x/cc/8f/bb/cc8fbb10ac6b0058745979cc4614ee2f.jpg", description: "Nicole Patterson is a 3rd generation farmer specialising with strawberry fields, avocado trees and white onions.
      Her family and her are proud to grow their own food and supply their neighbors.")
  puts "Farmers made"


  puts "Creating butchers"
    Producer.create!(Farmphotos: ["http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/group2b.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve5-150x150.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve2.jpg"],speciality: "butcher", name: "John Lean", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://i.pinimg.com/564x/f4/62/3e/f4623e3b11ecc3c2dd4c04ea99610ebe.jpg", description: "John Lean is a butcher and owner of Lean Co., and takes a lot of pride in working for a third generation family company.
The Lean Co.has than 35 years of experience providing clean, healthy meats to communities nearby.")
    Producer.create!(Farmphotos: ["http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/group2b.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve5-150x150.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve2.jpg"],speciality: "butcher", name: "Chad Lamb", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://i.pinimg.com/564x/de/18/10/de1810b7fe0cbce85e19381f07d6f4d4.jpg", description: "Chad Lamb runs Aussie Meats, Inc.; a family owned and operated ranch and meat provider.
His family farm provides beef, chicken, pork, and lamb, all with a heavy emphasis on kinder and more responsible farm animal practices.
")
    Producer.create!(Farmphotos: ["http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/group2b.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve5-150x150.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve2.jpg"],speciality: "butcher", name: "Butch Cadgates", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://www.skyword.com/contentstandard/wp-content/uploads/2015/12/matthewliteplo_ottawaphotographerfunnyduckfarms_070615_ml1283-recovered.jpg", description: "Butch Cadgates raised pigs since he was a very young boy with his parents and now provides quality pork products to his community.
Cadgates Ranch has won quality product prizes for outstanding animal care and products
# ")
    Producer.create!(Farmphotos: ["http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/group2b.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve5-150x150.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve2.jpg"],speciality: "butcher", name: "Duck Philips", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Duck Philips is a butcher and provider of prime meats. He only prepares and cuts meats from animals that have been raised responsibly and fair. There is a lot of pride in his noble work of providing exceptional products for his community to consume.")
    Producer.create!(Farmphotos: ["http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/group2b.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve5-150x150.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve2.jpg"],speciality: "butcher", name: "Malcom Todd", city: cities[4], latitude: coordinates[4][0], longitude: coordinates[4][1], photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "")
    Producer.create!(Farmphotos: ["http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/group2b.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve5-150x150.jpg","http://www.smithersbutchers.co.uk/wp-content/uploads/2015/03/steve2.jpg"],speciality: "butcher", name: "Hamish Slicer", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1], photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "")
  puts "Butchers made"

  puts "Creating fishermen"
    Producer.create!(speciality: "fishermen", name: "Captain Jack", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://i.pinimg.com/564x/a8/ac/62/a8ac621380a8aafb3db61b1279823ab4.jpg", description: "He takes great pride in sustainable fishing, using low-impact, environmentally-sound methods that reduce waste and do no damage to the sea bed. He was the first fisherman to pilot a Community Supported Fishery.His products include fresh fish fillets. You can be assured that his products are eco-conscious")
    Producer.create!(speciality: "fishermen", name: "Alex Salmon", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://i.pinimg.com/564x/b6/c1/b4/b6c1b4a847e975856ecc9d4727d8c241.jpg", description: "Alex is a world-class fisherman dedicated to fishing and aquaculture. With over 30 years of experience in the industry, he is a master of the development of quality products while maintaining harmony with the environment.")
    Producer.create!(speciality: "fishermen", name: "James Pond", city: cities[4], latitude: coordinates[4][0], longitude: coordinates[4][1], photo: "https://i.pinimg.com/564x/ad/ba/b0/adbab0673a970a1f65314392b00cc34f.jpg", description: "James harnesses nature to produce nutritious, tasty and supreme quality food from the ocean. As a result of his ongoing innovation and sustainable development, he is classed the world’s most eco-conscious supplier of farmed Atlantic Salmon.")
    Producer.create!(speciality: "fishermen", name: "Ted Tuna", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1], photo: "https://i.pinimg.com/564x/27/f7/6e/27f76e53d50bdfe7455ead6e1da1a853.jpg", description: "Ted places great emphasis on the quality of his product, his production process, traceability and food safety, in order to maintain the trust of his customers and end users.")
    Producer.create!(speciality: "fishermen", name: "Julia Rainer", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://thumbs.dreamstime.com/z/fisherman-23769990.jpg", description: "She takes great pride in sustainable fishing, using low-impact, environmentally-sound methods that reduce waste and do no damage to the sea bed. He was the first fisherman to pilot a Community Supported Fishery.")
    Producer.create!(speciality: "fishermen", name: "Frank Sturgeon", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://i.pinimg.com/564x/77/ab/67/77ab672face3a3fbb05eb7332a74381f.jpg", description: "Based in Cuxhaven, a town located right where the Elbe River flows into the North Sea. Frank is the first and only Australian fisherman to receive a sustainable seafood eco-label for its saithe-fishing practices. ")
  puts "Fisher made"

  #   puts "Creating butchers"

  #   Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg","https://www.bls.gov/ooh/images/15696.jpg"], speciality: "butcher", name: "John Lean", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1], photo: "https://i.pinimg.com/564x/f4/62/3e/f4623e3b11ecc3c2dd4c04ea99610ebe.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg","https://www.bls.gov/ooh/images/15696.jpg"], speciality: "butcher", name: "Chad Lamb", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://i.pinimg.com/564x/de/18/10/de1810b7fe0cbce85e19381f07d6f4d4.jpg", description: "An amazing man.")
  #   Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg","https://www.bls.gov/ooh/images/15696.jpg"], speciality: "butcher", name: "Butch Cadgates", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1], photo: "https://www.skyword.com/contentstandard/wp-content/uploads/2015/12/matthewliteplo_ottawaphotographerfunnyduckfarms_070615_ml1283-recovered.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg","https://www.bls.gov/ooh/images/15696.jpg"], speciality: "butcher", name: "Duck Philips", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg","https://www.bls.gov/ooh/images/15696.jpg"], speciality: "butcher", name: "Malcom Todd", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg","https://www.bls.gov/ooh/images/15696.jpg"], speciality: "butcher", name: "Hamish Slicer", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1], photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  # puts "Butchers made"

  # puts "Creating fishermen"
  #   Producer.create!(Farmphotos: ["https://i.ytimg.com/vi/Ahxf8m3wssc/maxresdefault.jpg","http://moziru.com/images/fish-net-clipart-fresh-fish-3.jpg", "https://www.cornwallscottages.co.uk/assets/img/attraction_slideshow_images/11_663_1.jpg"], speciality: "fishermen", name: "Captain Jack", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://i.pinimg.com/564x/a8/ac/62/a8ac621380a8aafb3db61b1279823ab4.jpg", description: "He takes great pride in sustainable fishing, using low-impact, environmentally-sound methods that reduce waste and do no damage to the sea bed. He was the first fisherman to pilot a Community Supported Fishery.")
  #   Producer.create!(Farmphotos: ["https://i.ytimg.com/vi/Ahxf8m3wssc/maxresdefault.jpg","http://moziru.com/images/fish-net-clipart-fresh-fish-3.jpg", "https://www.cornwallscottages.co.uk/assets/img/attraction_slideshow_images/11_663_1.jpg"], speciality: "fishermen", name: "Alex Salmon", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://i.pinimg.com/564x/b6/c1/b4/b6c1b4a847e975856ecc9d4727d8c241.jpg", description: "He takes great pride in sustainable fishing, using low-impact, environmentally-sound methods that reduce waste and do no damage to the sea bed. He was the first fisherman to pilot a Community Supported Fishery.")
  #   Producer.create!(Farmphotos: ["https://i.ytimg.com/vi/Ahxf8m3wssc/maxresdefault.jpg","http://moziru.com/images/fish-net-clipart-fresh-fish-3.jpg", "https://www.cornwallscottages.co.uk/assets/img/attraction_slideshow_images/11_663_1.jpg"], speciality: "fishermen", name: "James Pond", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://i.pinimg.com/564x/ad/ba/b0/adbab0673a970a1f65314392b00cc34f.jpg", description: "He takes great pride in sustainable fishing, using low-impact, environmentally-sound methods that reduce waste and do no damage to the sea bed. He was the first fisherman to pilot a Community Supported Fishery.")
  #   Producer.create!(Farmphotos: ["https://i.ytimg.com/vi/Ahxf8m3wssc/maxresdefault.jpg","http://moziru.com/images/fish-net-clipart-fresh-fish-3.jpg", "https://www.cornwallscottages.co.uk/assets/img/attraction_slideshow_images/11_663_1.jpg"], speciality: "fishermen", name: "Ted Tuna", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://i.pinimg.com/564x/27/f7/6e/27f76e53d50bdfe7455ead6e1da1a853.jpg", description: "He takes great pride in sustainable fishing, using low-impact, environmentally-sound methods that reduce waste and do no damage to the sea bed. He was the first fisherman to pilot a Community Supported Fishery.")
  #   Producer.create!(Farmphotos: ["https://i.ytimg.com/vi/Ahxf8m3wssc/maxresdefault.jpg","http://moziru.com/images/fish-net-clipart-fresh-fish-3.jpg", "https://www.cornwallscottages.co.uk/assets/img/attraction_slideshow_images/11_663_1.jpg"], speciality: "fishermen", name: "Jenny Block", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://thumbs.dreamstime.com/z/fisherman-23769990.jpg", description: "She takes great pride in sustainable fishing, using low-impact, environmentally-sound methods that reduce waste and do no damage to the sea bed. He was the first fisherman to pilot a Community Supported Fishery.")
  #   Producer.create!(Farmphotos: ["https://i.ytimg.com/vi/Ahxf8m3wssc/maxresdefault.jpg","http://moziru.com/images/fish-net-clipart-fresh-fish-3.jpg", "https://www.cornwallscottages.co.uk/assets/img/attraction_slideshow_images/11_663_1.jpg"], speciality: "fishermen", name: "Frank Sturgeon", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://i.pinimg.com/564x/77/ab/67/77ab672face3a3fbb05eb7332a74381f.jpg", description: "He takes great pride in sustainable fishing, using low-impact, environmentally-sound methods that reduce waste and do no damage to the sea bed. He was the first fisherman to pilot a Community Supported Fishery.")
  # puts "Fisher made"

    puts "Creating bakers"

    Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://www.cvae.nl/sites/default/files/field/image/shutterstock_59293864_medium.jpg","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg"], speciality: "baker", name: "James Whitbead", city: cities[3], latitude: coordinates[3][0], longitude: coordinates[3][1], photo: "https://i.pinimg.com/564x/ba/25/f5/ba25f588342263a44440ae9ca1c8a303.jpg", description: "James trained as a baker in her hometown of Hawes in beautiful Wensleydale. With over 20 years experience he is our renowned bread maker. We have been delighted to have his work at the Angels' Share since 2009. He introduces original flavours into the breads often acting on impulse to take advantage of the stunning local and seasonal ingredients. James makes many of the bakery's regional specialities as well as a range of biscuits and shortbreads.")
    Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://www.cvae.nl/sites/default/files/field/image/shutterstock_59293864_medium.jpg","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg"], speciality: "baker", name: "Bryce Bakes", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1], photo: "https://i.pinimg.com/564x/ca/27/b0/ca27b06c24e33b6d8e2ec6212e6dfcc1.jpg", description: "He trained at The Cordon Bleu in Paris and Bath School of Home Economics. In the swinging '60s he became the cookery editor of Housewife magazine, followed by Ideal Home magazine.")
    Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://www.cvae.nl/sites/default/files/field/image/shutterstock_59293864_medium.jpg","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg"], speciality: "baker", name: "Carrie Smith", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://i.pinimg.com/564x/dc/7d/cc/dc7dcc409434f3923ef6dc205d19afbd.jpg", description: "Carrie has spent a lifetime baking.  She started at Modern Bakery in Springfield, assembling cake boxes when she was just 14 years old.  She met Carmino there in the 1970s and later went on to work in every aspect of the bakery business.  She continued her baking, also working at Atkins Farm, serving as Head Sales Manager for 10 of the 22 years at the store. She’s been happily working at Armata’s for two years and now that she’s here, she wouldn’t have it any other way.")
    Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://www.cvae.nl/sites/default/files/field/image/shutterstock_59293864_medium.jpg","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg"], speciality: "baker", name: "Kim Soon", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "http://3.bp.blogspot.com/-YbMTKRP9f14/UnqoKkYoRBI/AAAAAAAARQE/DxTnnEZqXJ0/s1600/American+Gothic+1930.jpg", description: "Kim has spent a lifetime baking.  She started Modern Bakery preparing cake when she was just 14 years old. She continued her baking, also working at Atkins Farm, and now she's happily working at her own bakery. She's proud to provide bakled goods for her community and wouldn’t have it any other way.")
    Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://www.cvae.nl/sites/default/files/field/image/shutterstock_59293864_medium.jpg","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg"], speciality: "baker", name: "Oliver Baker", city: cities[4], latitude: coordinates[4][0], longitude: coordinates[4][1], photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Farmer%2C_Nicaragua.jpg/1200px-Farmer%2C_Nicaragua.jpg", description: "He became a baker because of his love of good bread. He was two years into an accounting and finance degree when he changed to culinary and decided to turn his lifelong hobby of baking into a career.")
    Producer.create!(Farmphotos: ["http://ragus.co.uk/wp-content/uploads/2015/09/A-Baker-Within-A-Bakery.png","https://www.cvae.nl/sites/default/files/field/image/shutterstock_59293864_medium.jpg","https://d3ciwvs59ifrt8.cloudfront.net/79757705-6d10-4113-a363-e4e3e4f169f4/b73524c5-069b-491a-8241-9f3824132109.jpg"], speciality: "baker", name: "Mary Berry", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "http://www.organicauthority.com/wp-content/uploads/2015/10/female-tomato-farmer.jpg", description: "She trained at The Cordon Bleu in Paris and Bath School of Home Economics. In the swinging '60s she became the cookery editor of Housewife magazine, followed by Ideal Home magazine.")


  puts "Bakers made"

    puts "Creating winemakers"
    Producer.create!(Farmphotos: ["http://southaustralia.traveller.com.au/wp-content/uploads/2017/04/tasting-australia-1.jpg","http://www.afr.com/content/dam/images/g/y/l/x/1/8/image.related.afrWideArticleLead.940x529.gyljfc.png/1510641289672.jpg","https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2016/winemakerjus.jpg"], speciality: "winemaker", name: "Jill Hawkins", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1], photo: "https://i.pinimg.com/564x/4c/0a/93/4c0a93fc6da6c0e5bb124bf5166df175.jpg", description: "An environmentalist, she pursues biodynamic wine growing and making principles. That means no synthetic chemicals in the ground or on the vines and no additions in winemaking.
She likes grapes grown in a natural state and is an enthusiastic believer in allowing things to go their own course. She positively loves wild ferments.")
    Producer.create!(Farmphotos: ["http://southaustralia.traveller.com.au/wp-content/uploads/2017/04/tasting-australia-1.jpg","http://www.afr.com/content/dam/images/g/y/l/x/1/8/image.related.afrWideArticleLead.940x529.gyljfc.png/1510641289672.jpg","https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2016/winemakerjus.jpg"], speciality: "winemaker", name: "Dave Smith", city: cities[3], latitude: coordinates[3][0], longitude: coordinates[3][1], photo: "https://i.pinimg.com/564x/ab/f8/3b/abf83b05afc9a965fbac39f3d39ca0ce.jpg", description: "Dave owns and operates a biodynamic certified vineyard. Since taking over the reigns of the family property, Dave has brought all the winemaking in-house. Try his Basket Press Shiraz or Basket Press Chardonnay, a labour of love.")
    Producer.create!(Farmphotos: ["http://southaustralia.traveller.com.au/wp-content/uploads/2017/04/tasting-australia-1.jpg","http://www.afr.com/content/dam/images/g/y/l/x/1/8/image.related.afrWideArticleLead.940x529.gyljfc.png/1510641289672.jpg","https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2016/winemakerjus.jpg"], speciality: "winemaker", name: "Sam Withers", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://i.pinimg.com/564x/c2/48/c0/c248c09dae24859c7385d2130365eb6d.jpg", description: "She is acknowledged as one of the country's top riesling makers, the voice of Eden Valley riesling. And then there's viognier. It's her baby, the wine she is now most closely associated with, simply because Sally dared to believe the Rhone Valley white grape had a future in this country.")
    Producer.create!(Farmphotos: ["http://southaustralia.traveller.com.au/wp-content/uploads/2017/04/tasting-australia-1.jpg","http://www.afr.com/content/dam/images/g/y/l/x/1/8/image.related.afrWideArticleLead.940x529.gyljfc.png/1510641289672.jpg","https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2016/winemakerjus.jpg"], speciality: "winemaker", name: "Henry Combs", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://i.pinimg.com/564x/5a/92/61/5a926139b5d0231621be250e1065f7f5.jpg", description: "Henry is held in high esteem as a true innovator, a talented wine artisan and an industry revolutionary. More than 30 years ago Lacy  helped lead the charge away from technically proficient, squeaky clean wines toward natural winemaking methods that embrace site, indigenous yeasts, sur lies aging and malolactic and barrel fermentation. As a result, she created a benchmark style now emulated by many.")
    Producer.create!(Farmphotos: ["http://southaustralia.traveller.com.au/wp-content/uploads/2017/04/tasting-australia-1.jpg","http://www.afr.com/content/dam/images/g/y/l/x/1/8/image.related.afrWideArticleLead.940x529.gyljfc.png/1510641289672.jpg","https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2016/winemakerjus.jpg"], speciality: "winemaker", name: "Kevin Bowman", city: cities[4], latitude: coordinates[4][0], longitude: coordinates[4][1], photo: "https://i.pinimg.com/564x/d2/35/2c/d2352c3409e1429eb2c95015c7a322b0.jpg", description: "Kevin has been making sustainable wines from his early days on the Gold Coast. He crafts Pinot Noir and other varietals with native yeasts, and no fining or filtering, receiving critical praise from every major wine publication for a variety of his wines, not just Pinot Noir. Sustainably farmed, he shows that sourcing the right fruit shows off the land more than winemaking does.")
    Producer.create!(Farmphotos: ["http://southaustralia.traveller.com.au/wp-content/uploads/2017/04/tasting-australia-1.jpg","http://www.afr.com/content/dam/images/g/y/l/x/1/8/image.related.afrWideArticleLead.940x529.gyljfc.png/1510641289672.jpg","https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2016/winemakerjus.jpg"], speciality: "winemaker", name: "Silvia Reed", city: cities[3], latitude: coordinates[3][0], longitude: coordinates[3][1], photo: "https://i.pinimg.com/564x/43/93/37/439337046236b0cf18257df5db9f492f.jpg", description: "Silvia, a winemaker in her own right, acknowledges what everyone who has met the woman behind Block Wines knows: that she is all consumed by wine.
Silvia is renowned for her remarkable ability to cipher the soils of her Gold Coast home into graceful, thrilling rieslings. She is enthralled by the grape, and drinkers, in turn, are enchanted by her interpretation of the classic white variety.
")

  puts "Winemakers made"


  puts "Creating cooks"
    Producer.create!(speciality: "cook", name: "Alex Harrington", city: cities[2], latitude: coordinates[2][0], longitude: coordinates[2][1], photo: "https://i.pinimg.com/564x/f0/78/64/f07864f6f907bf61662d178f7d07c838.jpg", description: "There are couple of culinary experts who claims such dedication and motivation from their local land as Alex Harrington. She stood second among the most dazzling war of top 10 chefs in world for 2017.")
    Producer.create!(speciality: "cook", name: "Cassandra Cole", city: cities[4], latitude: coordinates[4][0], longitude: coordinates[4][1], photo: "https://i.pinimg.com/564x/9e/cc/a3/9ecca3b3b9b6d64025a40ac3c86efd65.jpg", description: "Cassandra is a culinary specialist and restaurateur known for presenting and championing a lighter style of cooking.")
    Producer.create!(speciality: "cook", name: "Nigella Norris", city: cities[0], latitude: coordinates[0][0], longitude: coordinates[0][1], photo: "https://i.pinimg.com/564x/95/60/f1/9560f1f5ef96c4693a2ce9160d062493.jpg", description: "Nigella is the Leonel Messi of cooking in the day. Nigella can always be seen to be handling the pan with incredible finesse. Her cooking skills are next to none.")
    Producer.create!(speciality: "cook", name: "Rick Bay", city: cities[1], latitude: coordinates[1][0], longitude: coordinates[1][1], photo: "https://i.pinimg.com/564x/c5/5e/55/c55e554c98c73774ef21723299618ef3.jpg", description: "Rick displays his one of a kind culinary combined singing abilities whilst in the kitchen. He is a an absolute legend in his home town of Byron Bay.
")
    Producer.create!(speciality: "cook", name: "Marta Stand", city: cities[3], latitude: coordinates[3][0], longitude: coordinates[3][1], photo: "https://i.pinimg.com/564x/57/9d/82/579d82a4e7b20dbf7cb906fa9c416b25.jpg", description: "Marta learned to cook from her grandma when she was just a girl. She now delights in adapting these recipes into modern day masterpieces.")
    Producer.create!(speciality: "cook", name: "Maria Burton", city: cities[4], latitude: coordinates[4][0], longitude: coordinates[4][1], photo: "https://i.pinimg.com/564x/15/9a/d5/159ad590f6db845fd54852e3fe1a10c7.jpg", description: "There are couple of culinary experts who claims such dedication and motivation from their local land as Maria Burton. She stood second among the most dazzling war of top 10 chefs in world for 2017.")
  puts "cooks made"


  # puts "Creating deli creatives"
  #   Producer.create!(speciality: "deli", name: "Jill Hawkins", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://i.pinimg.com/564x/04/d7/6e/04d76e906ff0d670ca4b852242ed1bea.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(speciality: "deli", name: "Bryce Carrell", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://i.pinimg.com/564x/33/0d/4c/330d4cf4d382ea2451d737f453106dbc.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(speciality: "deli", name: "Sally Norris", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://i.pinimg.com/564x/06/bb/67/06bb670e49a0a5b5b8cffda603336116.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(speciality: "deli", name: "Tilly Bay", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://i.pinimg.com/564x/cc/b8/55/ccb8559039b503cfb197b8eab211e37f.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(speciality: "deli", name: "Forest Baker", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://i.pinimg.com/564x/86/5e/7e/865e7e582aba741057c4fbab5232da7e.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  #   Producer.create!(speciality: "deli", name: "Jenny Block", city: cities[5], latitude: coordinates[5][0], longitude: coordinates[5][1], photo: "https://i.pinimg.com/564x/34/36/0a/34360a5d62dd90dc73fe68540e311648.jpg", description: "Archie Kenwright is a 3rd generation farmer specialising in growing swiss potatoes and brown onions.")
  # puts "Deli creatives made"


  puts "Producers made"

puts "Creating Categories"
    categories = ["vegetables", "fruits", "meat", "fish", "dairy & eggs", "bakery", "wine & drinks", "pantry", "deli"]
    categories.each { |category| Category.create!(name: category, subcategory: category)}
  puts "Category made"

 puts "Creating Vegetables"
    veggies = ["Carrots", "Onions", "Potatoes", "Broccoli", "Baby Spinach", "Eggplant", "Garlic", "Corn", "Olives"]
    photos = ["https://i.pinimg.com/564x/54/77/3c/54773c097d987739fe679bf9803d5182.jpg", "https://i.pinimg.com/564x/9f/16/b1/9f16b1e1984fe45281993aaacaf5248d.jpg", "https://i.pinimg.com/564x/5b/2a/9f/5b2a9f24e3cd05b578f4b71300a47554.jpg", "https://i.pinimg.com/564x/b2/bf/43/b2bf432669979f73f478a16627f33138.jpg", "https://i.pinimg.com/564x/9f/58/0a/9f580a12fd41a3af0b8dbd392667f597.jpg", "https://i.pinimg.com/564x/5b/e4/ab/5be4ab40e298fc84e4ec6f74b71e49da.jpg", "https://i.pinimg.com/564x/f2/cb/39/f2cb395d5b3d4032d32c289842ea9c90.jpg", "https://i.pinimg.com/564x/6a/ff/0e/6aff0e6aeb1919c3748c508a710f6f9c.jpg", "https://i.pinimg.com/564x/6d/e7/78/6de77832c62f093cdd19472d5b9d0bf9.jpg"]
    veggies.each_with_index do |veg, index|

      product = Product.create!(name: veg, price: (1..2).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "vegetables"), photo: photos[index])
       client = Edamam::Client.new(app_id: "87fcd877", app_key: "757ab6a2d95f52daf6f5f4b3634e0781")
       product_data = "1 #{product.name}"
       nd = client.food_database.nutritional_data(product_data)
       nutrient = Nutrient.create(product: product, fatquant: fat_quant(nd), fatunit: fat_unit(nd), calquant: calories_quant(nd), calunit: calories_unit(nd), carbsquant: carbs_unit(nd), carbsunit: carbs_unit(nd))

    end


  puts "Vegetables made"

 puts "Creating Fruits"
    fruits = ["Strawberries", "Oranges", "Apples", "Grapes", "Bananas", "Pineapple", "Melon", "Lemon"]
    photos = ["https://i.pinimg.com/564x/d6/e6/6e/d6e66e5cb74009af7f8d9b261c222db7.jpg", "https://i.pinimg.com/564x/a4/1c/d7/a41cd7b5043b03d2d0cb2c44db97d0a6.jpg", "https://i.pinimg.com/564x/f8/47/a6/f847a694c0aa8dbd072868fa06715bf3.jpg", "https://i.pinimg.com/564x/d8/46/c5/d846c57d5a701a6d168bcffb786434d2.jpg", "https://78.media.tumblr.com/tumblr_lmewvhjrMF1qir91zo1_400.jpg", "https://i.pinimg.com/564x/c3/9c/d6/c39cd67be06f0431a31a9bebf7358424.jpg", "https://i.pinimg.com/564x/fa/81/eb/fa81eb2fdeb0cd95fb47af866b0dcacf.jpg
", "https://i.pinimg.com/564x/16/15/fc/1615fc0d6e9023a7136989fc3bbd346e.jpg"]
    fruits.each_with_index do |fruit, index|

     product = Product.create!(name: fruit, price: (1..2).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "fruits"), photo: photos[index])
     # client = Edamam::Client.new(app_id: "87fcd877", app_key: "757ab6a2d95f52daf6f5f4b3634e0781")
     # product_data = "1 #{product.name}"
     # nd = client.food_database.nutritional_data(product_data)
     # nutrient = Nutrient.create(product: product, fatquant: fat_quant(nd), fatunit: fat_unit(nd), calquant: calories_quant(nd), calunit: calories_unit(nd), carbsquant: carbs_unit(nd), carbsunit: carbs_unit(nd), sugarquant: sugar_quant(nd), sugarunit: sugar_unit(nd))

    end
  puts "Fruits made"


 puts "Creating Meats"
    meats = ["Beef", "Poultry", "Sausage", "Pork", "Lamb and mutton"]
    photos = ["https://i.pinimg.com/564x/b2/72/d1/b272d1d66eed9334ede5f8aff83e63a4.jpg", "https://i.pinimg.com/564x/b0/1a/d6/b01ad69e49920325e7c5c4243fc092a6.jpg", "https://i.pinimg.com/564x/57/93/60/5793605bb37a1599464a08b39095f6b8.jpg", "https://i.pinimg.com/564x/23/4c/60/234c605701e8e30be5beddb12f39e9f3.jpg", "https://i.pinimg.com/564x/37/c8/96/37c8964a5a467bd07c3b0c8793196382.jpg"]
    meats.each_with_index {|meat, index| Product.create!(name: meat, price: (4..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "butcher").sample, category: Category.find_by(name: "meat"), photo: photos[index])}
  puts "Meats made"

 puts "Creating Fish"
    fishes = ["Salmon", "Swordfish", "Crab Legs", "Octopus", "Tuna", "Cod", "Anchovy"]
    photos = ["https://i.pinimg.com/564x/f1/2b/aa/f12baa0384ca80d373bc35b5f50858bf.jpg", "https://i.pinimg.com/564x/3e/55/b5/3e55b565c620570d635b5dd10984994d.jpg", "https://i.pinimg.com/564x/45/ed/92/45ed92888c3e9ddc65128429e19eb6f6.jpg", "https://i.pinimg.com/564x/2d/0a/c8/2d0ac89383ce946f2a0c4dadb72efa2a.jpg", "https://i.pinimg.com/564x/fb/96/24/fb9624a0654c74d9e7d90a7699b658c8.jpg", "https://i.pinimg.com/564x/62/c7/f9/62c7f93f1e5133b0191693bd8ce26bd8.jpg", "https://i.pinimg.com/564x/f5/18/4e/f5184ebc570771495768dba99755d987.jpg"]
    fishes.each_with_index do |fish, index|
     Product.create!(name: fish, price: (8..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "fishermen").sample, category: Category.find_by(name: "fish"), photo: photos[index])
     end
  puts "Fish made"

puts "Creating Dairy & Eggs"
    dairies = ["Eggs", "Milk", "Cheese", "Yogurt", "Butter", "Ice-Cream"]
    photos = ["https://i.pinimg.com/564x/78/72/7f/78727f8fa0cea4fb6c7d0c7da3126d06.jpg", "https://i.pinimg.com/564x/78/2e/4f/782e4fcdf9934f4c9f28d91d29d06aa7.jpg", "https://i.pinimg.com/564x/ab/c7/ed/abc7ed2b895fa7836ff31f7db273fd70.jpg", "https://i.pinimg.com/564x/d8/53/e3/d853e3f2b542ec8a3560a8fa42cd7c2f.jpg", "http://static.gofugyourself.com/uploads/2016/10/freshly-made-butter.jpg", "https://i.pinimg.com/564x/63/aa/ae/63aaae89a6482934b7dbca964847cf12.jpg"]
    dairies.each_with_index {|dairy, index| Product.create!(name: dairy, price: (3..5).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "farmer").sample, category: Category.find_by(name: "dairy & eggs"), photo: photos[index])}
  puts "Dairy & Eggs made"

puts "Creating Bakery"
    bakes = ["Croissants", "Baguettes", "Muffins", "Cupcakes", "Tortillas"]
    photos = ["https://i.pinimg.com/564x/bb/d5/aa/bbd5aa58be18aaab6052deda215e98b5.jpg", "https://i.pinimg.com/564x/62/08/c4/6208c48a52bf4b6c78eec88fbac0e03a.jpg", "https://i.pinimg.com/564x/17/51/5a/17515a3d8e5fd796ec881607d4129184.jpg", "https://i.pinimg.com/564x/da/68/1a/da681ab51ef3381b47a598cc930ebf38.jpg", "https://i.pinimg.com/564x/c8/7b/9d/c87b9d345ad3abba03441821eddff4c5.jpg"]
    bakes.each_with_index {|bake, index| Product.create!(name: bake, price: (2..4).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "baker").sample, category: Category.find_by(name: "bakery"), photo: photos[index])}
  puts "Bakery made"

  puts "Creating Wine & Drinks"
    drinks = ["Red Wine", "White Wine", "Coffee", "Juice", "Tea"]
    photos = ["https://i.pinimg.com/564x/f7/32/fa/f732faaf4bf513286abd857cc89d5b1a.jpg", "https://i.pinimg.com/564x/f8/c0/a1/f8c0a1c2d3458a71c2d22bc89901743c.jpg", "https://i.pinimg.com/564x/4c/89/92/4c89923f85ac4b515d01c684005085ae.jpg", "https://i.pinimg.com/564x/c1/b5/2d/c1b52db68a50e248a01aeb7604e08cef.jpg", "https://i.pinimg.com/564x/70/2c/9d/702c9dc332d2a4f3c01d441427ad8fab.jpg"]
    drinks.each_with_index {|drink, index| Product.create!(name: drink, price: (4..10).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "winemaker").sample, category: Category.find_by(name: "wine & drinks"), photo: photos[index])}
  puts "Wine & Drinks made"

  puts "Creating Pantry"
    pantries = ["Pasta", "Flour", "Wheat", "Cereal", "Spices", "Oils", "Rice", "Cous Cous", "Olive Oil", "Pizza Base"]
    photos = ["https://i.pinimg.com/564x/7a/2d/5d/7a2d5dddef422378df71b4cb55238cc4.jpg", "https://i.pinimg.com/564x/13/46/b3/1346b39135a3c239d16267767aad2136.jpg", "https://i.pinimg.com/564x/94/6f/e8/946fe8dd991b5c8f7771cd081132d155.jpg", "https://i.pinimg.com/564x/32/12/42/3212424b6fd2621f20b8d22e1aa76290.jpg", "https://i.pinimg.com/564x/04/55/1a/04551ae3a5456c17ec6f1084721bde6e.jpg", "https://i.pinimg.com/564x/b0/54/52/b054521c8dc23269029a612429b9dd7b.jpg", "https://i.pinimg.com/564x/5a/42/bb/5a42bb7dc6f32a47dea03f171ca705d2.jpg", "https://i.pinimg.com/564x/43/20/ba/4320baddae363c756e997c0ed3be57d3.jpg", "https://i.pinimg.com/564x/d9/17/26/d917265778ef5785d632a2bf526fcf27.jpg", "https://i.pinimg.com/564x/51/65/e9/5165e96c92c0dd8ec02cfa099df95f8f.jpg"]
    pantries.each_with_index {|pantry, index| Product.create!(name: pantry, price: (2..6).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "cook").sample, category: Category.find_by(name: "pantry"), photo: photos[index])}
  puts "Pantry made"


  # puts "Creating Pantry"
  #   pantries = ["Spaghetti", "Flour", "Wheat Grain", "Granola", "Cumin", "Olive Oil", "Brown Rice", "Cous Cous"]
  #   photos = ["https://i.pinimg.com/564x/7a/2d/5d/7a2d5dddef422378df71b4cb55238cc4.jpg", "https://i.pinimg.com/564x/13/46/b3/1346b39135a3c239d16267767aad2136.jpg", "https://i.pinimg.com/564x/94/6f/e8/946fe8dd991b5c8f7771cd081132d155.jpg", "https://i.pinimg.com/564x/32/12/42/3212424b6fd2621f20b8d22e1aa76290.jpg", "https://i.pinimg.com/564x/04/55/1a/04551ae3a5456c17ec6f1084721bde6e.jpg", "https://i.pinimg.com/564x/b0/54/52/b054521c8dc23269029a612429b9dd7b.jpg", "https://i.pinimg.com/564x/5a/42/bb/5a42bb7dc6f32a47dea03f171ca705d2.jpg", "https://i.pinimg.com/564x/43/20/ba/4320baddae363c756e997c0ed3be57d3.jpg"]


  #   pantries.each_with_index  do |pantry, index|
  #    product = Product.create!(name: pantry, price: (4..12).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "cook").sample, category: Category.find_by(name: "pantry"), photo: photos[index])
  #    client = Edamam::Client.new(app_id: "87fcd877", app_key: "757ab6a2d95f52daf6f5f4b3634e0781")
  #    product_data = "1 #{product.name}"
  #    nd = client.food_database.nutritional_data(product_data)
  #    Nutrient.create(product: product, fatquant: fat_quant(nd), fatunit: fat_unit(nd), calquant: calories_quant(nd), calunit: calories_unit(nd), carbsquant: carbs_unit(nd), carbsunit: carbs_unit(nd), sugarquant: sugar_quant(nd), sugarunit: sugar_unit(nd))
  #  end
  # puts "Pantry made"



  puts "Creating Deli"
    delis = ["Potatoe Salad", "Roasted Squash", "Roast Beef", "Green Bean Soup", "Saffron Rice", "Pad Thai", "Smoked Turkey", "Mac & Cheese"]
    photos = ["https://i.pinimg.com/564x/49/92/80/499280d39ba17871d64b52b23d63be70.jpg", "https://i.pinimg.com/564x/93/ed/88/93ed883b58507ad4bac65a68bec32280.jpg", "https://i.pinimg.com/564x/21/25/d8/2125d8458924726516adf5d00766289f.jpg
", "https://i.pinimg.com/564x/13/71/d6/1371d674ea36042ae71251abba69bcab.jpg", "https://i.pinimg.com/564x/cd/b5/3d/cdb53d6f07474865e84bb7f3ba7a99f1.jpg", "https://i.pinimg.com/564x/d5/a3/1b/d5a31b80b94618cf945b8f29742f68fe.jpg", "https://i.pinimg.com/564x/dc/c1/18/dcc1184c4f4a4f10da0fdb2412e8a8cd.jpg", "https://i.pinimg.com/564x/6c/ea/d1/6cead1dc0d2c25a6d951326852ab1098.jpg"]
    delis.each_with_index {|deli, index| Product.create!(name: deli, price: (8..12).to_a.sample, stock: 10, unit_type: "kg", producer: Producer.where(speciality: "cook").sample, category: Category.find_by(name: "deli"), photo: photos[index])}
  puts "Deli made"


  # puts "Creating Orders"
  #   users.each {|user| Order.create!(amount: 10 , user: user, status:"paid")}
  #   users.each {|user| Order.create!(amount: 10, user: user, status:"paid")}
  #   users.each {|user| Order.create!(amount: 10, user: user, status:"paid")}
  # puts "Orders made"

  # puts "Creating Order Lines"
  #   users.each do |user|
  #     OrderLine.create!(quantity: 1 , order_id: user.orders.all.sample.id, product_id: Product.all[(0..10).to_a.sample].id)
  #     OrderLine.create!(quantity: 1 , order_id: user.orders.all.sample.id, product_id: Product.all[(11..20).to_a.sample].id)
  #     OrderLine.create!(quantity: 2 , order_id: user.orders.all.sample.id, product_id: Product.all[(21..32).to_a.sample].id)
  #     OrderLine.create!(quantity: 3 , order_id: user.orders.all.sample.id, product_id: Product.all[(33..44).to_a.sample].id)
  #     OrderLine.create!(quantity: 1 , order_id: user.orders.all.sample.id, product_id: Product.all[(45..57).to_a.sample].id)
  #   end

  #   Order.all.each do |order|
  #     total = 0
  #     order.order_lines.each do |order_line|
  #       total += (order_line.product.price) * order_line.quantity
  #     end
  #     order.update(amount: total)
  #   end
  # puts "Order Lines made"




puts "Create Recipes"

  #Broccoli, Olive and Pine Nut Whole-Pizza
  recipe =Recipe.new(title: "Broccoli, Olive and Pine Nut Whole-Pizza", description: "The nice winter mix of fresh and light. Have for dinner or lunch, to snack on or impress the neighbours. ", instructions: ["To make the pizza base, place the yeast, sugar and water in a small bowl and mix to combine. Set aside in a warm place for 5 minutes or until bubbles appear on the surface. ","Place the flour and salt in a large bowl and make a well in the centre. Add the yeast mixture and oil and, using well-floured hands, mix together to form a dough.", "Knead the dough on a lightly floured surface for 4–5 minutes or until smooth and elastic. Place the dough in a large, lightly greased bowl and cover with a clean, damp cloth. Set aside in a warm place for 30 minutes to rest.", "Preheat oven to 200°C (400°F). Divide the dough in half. Roll out each half on a lightly floured surface to form a 35cm x 25cm oval. Place each base on a lightly greased large oven tray lined with non-stick baking paper.", "Place the broccoli, oil, lemon rind and garlic in a bowl and toss to combine. Divide the broccoli mixture between the pizzas and cook for 15 minutes or until the bases are cooked through. Top with the anchovy, spinach, olives and pine nuts. Serve with lemon wedges, if using. Makes 2."], difficulty: 2, photo: "https://cdn.donnahaycdn.com.au/images/content-images/Broccoli_olive_and_pine_nut_whole_wheat_pizza.jpg", producer: Producer.last)
  recipe.products << Product.find_by(name: "Pizza Base")
  recipe.products << Product.find_by(name: "Broccoli")
  recipe.products << Product.find_by(name: "Olive Oil")
  recipe.products << Product.find_by(name: "Lemon")
  recipe.products << Product.find_by(name: "Garlic")
  recipe.products << Product.find_by(name: "Anchovy")
  recipe.products << Product.find_by(name: "Baby Spinach")
  recipe.products << Product.find_by(name: "Olives")
  recipe.save!

  #Honey-Lemon Ricotta Breakfast Toast and Figs + Pistachios
  recipe =Recipe.new(title: "Honey-Lemon Ricotta Breakfast Toast and Figs + Pistachios", description: "Enjoy this superhealthy classic French vegetarian dish - counts as 4 of 5-a-day", instructions: "Step 1: Cut the aubergines in half lengthways. Place them on the board, cut side down, slice in half lengthways again and then across into 1.5cm chunks. Cut off the courgettes ends, then across into 1.5cm slices. Step 2: Peel the peppers from stalk to bottom. Hold upright, cut around the stalk, then cut into 3 pieces. Cut away any membrane, then chop into bite-size chunks.", difficulty: 4, photo: "https://i.pinimg.com/564x/53/81/d7/5381d7e39983a39ea613003a12cc94bd.jpg", producer: Producer.last)
  recipe.products << Product.find_by(name: "Eggplant")
  recipe.products << Product.find_by(name: "Cheese")
  recipe.products << Product.find_by(name: "Onions")
  recipe.products << Product.find_by(name: "Garlic")
  recipe.products << Product.find_by(name: "Carrots")
  recipe.save!

   #Braised Tomatoes with Burrata
  recipe =Recipe.new(title: "Braised Tomatoes with Burrata", description: "Learn a skill for life with our foolproof crêpe recipe that ensures perfect pancakes every time - elaborate flip optional", instructions: "Step 1: Put the flour, eggs, milk, 1 tbsp oil and a pinch of salt into a bowl or large jug, then whisk to a smooth batter. Set aside for 30 mins to rest if you have time, or start cooking straight away.", difficulty: 1, photo: "https://i.pinimg.com/564x/53/ae/a8/53aea881dc067d3a0781acd6bd4b9965.jpg", producer: Producer.last)
  recipe.products << Product.find_by(name: "Eggs")
  recipe.products << Product.find_by(name: "Flour")
  recipe.products << Product.find_by(name: "Milk")
  recipe.save!

  #avacado and toast
  recipe =Recipe.new(title: "Roasted Beet and Carrot Lentil Salad with Feta, Yoghurt and Dill", description: "So simple and delicious, this is perfect when you need a quick and nutritious breakfast or snack.", instructions: "", difficulty: 2, photo: "https://i.pinimg.com/564x/d3/f6/2f/d3f62f4c5d3ca07f0e649d266e5dfc32.jpg", producer: Producer.last)
  recipe.products << Product.find_by(name: "Baguettes")
  recipe.save!


puts "Recipes made"





