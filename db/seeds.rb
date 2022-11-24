require "open-uri"

puts "Cleaning database..."
Review.destroy_all
Job.destroy_all
User.destroy_all
Dev.destroy_all

puts "Creating supercoders..."

file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/7_qauvce.jpg")
mike = Dev.new({ name: "Mike", github_link: "https://github.com/magicmike", skills: "5 years", description: "Ruby, C#", price: "72$/h" })
mike.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
mike.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/11_j1j9zt.jpg")
aquachad = Dev.new({ name: "AquaChad", github_link: "https://github.com/aquachad123", skills: "2 years", description: "JavaScript", price: "65$/h" })
aquachad.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
aquachad.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/6_kzsomb.jpg")
bill = Dev.new({ name: "Bill", github_link: "https://github.com/billgates95", skills: "20 years", description: "C#, Python, Java, Swift", price: "100$/h" })
bill.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
bill.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/2_t4tphj.jpg")
jeremy = Dev.new({ name: "Jeremy", github_link: "https://github.com/jeremyfragrance", skills: "3 years", description: "Python, Ruby", price: "68$/h" })
jeremy.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
jeremy.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/8_fszaam.jpg")
naomi = Dev.new({ name: "Naomi", github_link: "https://github.com/naomicampbell", skills: "4 years", description: "JavaScript", price: "71$/h" })
naomi.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
naomi.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/1_xzuuvx.jpg")
steve = Dev.new({ name: "Steve", github_link: "https://github.com/steveo", skills: "7 years", description: "Ruby, PHP", price: "80$/h" })
steve.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
steve.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/4_dqbteb.jpg")
harry = Dev.new({ name: "Harry", github_link: "https://github.com/harrypotter", skills: "2 years", description: "C#, JavaScript", price: "65$/h" })
harry.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
harry.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/7_qauvce.jpg")
karl = Dev.new({ name: "Karl", github_link: "https://github.com/", skills: "12 years", description: "JavaScript, Ruby, Python Java", price: "90$/h" })
karl.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
karl.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/3_plutrh.jpg")
tom = Dev.new({ name: "Tom", github_link: "https://github.com/tomford", skills: "2 years", description: "JavaScript", price: "60$/h" })
tom.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
tom.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/10_lnl5w9.jpg")
claudia = Dev.new({ name: "Claudia", github_link: "https://github.com/claudiaschiffer", skills: "3 years", description: "Python, Javascript, Ruby", price: "69$/h" })
claudia.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
claudia.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/9_izifwr.jpg")
karen = Dev.new({ name: "Karen", github_link: "https://github.com/ragekaren", skills: "8 years", description: "JavaScript, Ruby, JavaScript, Python", price: "85$/h" })
karen.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
karen.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/8_fszaam.jpg")
oscar = Dev.new({ name: "Oscar", github_link: "https://github.com/oscar007", skills: "2 years", description: "JavaScript", price: "62$/h" })
oscar.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
oscar.save!

puts "finished"
