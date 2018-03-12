

  OrderLine.destroy_all
  Order.destroy_all
  Product.destroy_all
  Category.destroy_all
  Producer.destroy_all
  User.destroy_all




  puts "Creating Users"
     emails = ["john@yadoo.com", "ringo@geemail.net", "george@zoohoo.org", "paul@yadoo.com", "bill@gmail.com", "george@yadoo.com"]
     names = ["Martha Stewart", "Elvis Presley", "Carles Puigdemont", "Barack Obama", "Angela Merkel", "John Lennon", "Paul McCartney","Ringo Star","George W. Bush", "George Harrison"]
     avatars = ["http://rogovoyreport.com/wp-content/uploads/George-Harrison.jpg", "https://gwbcenter.imgix.net/legacy/-%20USE%20THIS%20ONE.jpg?w=200&h=200&fit=facearea&faceindex=1&facepad=3&mask=ellipse&fm=png", "https://www.whitehouse.gov/wp-content/uploads/2017/12/44_barack_obama1.jpg", "https://www.biography.com/.image/t_share/MTQ4Nzc2NzI2NTM1NjExNDQ3/biography-angela-merkel.jpg", "https://i.ytimg.com/vi/YkgkThdzX-8/maxresdefault.jpg", "https://cdn.tn.com.ar/sites/default/files/styles/1366x765/public/2017/12/14/paul-mccartney.jpg", "https://i0.wp.com/www.culturesonar.com/wp-content/uploads/2018/01/Ringo-Starr-Getty.jpg?resize=940%2C529"]
     emails.each {|email| User.create(email: email, password: "1234567", fullname: names.sample)}
  puts "Users made"
  puts "Creating Producer"
    names = ["Farmer Jill", "Farmer Bill", "Farmer Jack", "Farmer Giles", "Farmer Frank"]
    names.each {|name| Producer.create(name: name)}
  puts "Producers made"

  puts "Creating Category"
    Category.create(name: "Dairy", subcategory: "Cheese")
  puts "Category made"

 puts "Creating Products"
    names = ["Carrots", "Wine", "Milk", "Cheese", "Duck"]
    names.each {|name| Product.create(name: name, price: 10, stock: 10, producer: Producer.find_by(name: "Farmer Frank"), category: Category.first)}
  puts "Products made"

  puts "Creating Orders"
    Order.create(amount: 40, user: User.last)
  puts "Orders made"

  puts "Creating Order Lines"
    OrderLine.create(quantity: 12, order: Order.last, product: Product.last)
  puts "Order Lines made"


