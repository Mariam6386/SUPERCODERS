require "open-uri"

puts "Cleaning database..."
Dev.destroy_all

puts "Creating supercoders..."

file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/13_qjwerl.jpg")
mike = Dev.new({ name: "Mike", github_link: "https://github.com/magicmike", skills: "5 years", description: "Ruby, C#", price: "72$/h" })
mike.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
mike.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/11_j1j9zt.jpg")
pippa = Dev.new({ name: "Pippa", github_link: "https://github.com/aquachad123", skills: "2 years", description: "JavaScript, Ruby, PHP, Vue", price: "65$/h" })
pippa.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
pippa.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/6_kzsomb.jpg")
harry = Dev.new({ name: "Harry", github_link: "https://github.com/billgates95", skills: "20 years", description: "C#, Python, Java, Swift", price: "100$/h" })
harry.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
harry.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/2_t4tphj.jpg")
jeremy = Dev.new({ name: "Jeremy", github_link: "https://github.com/jeremyfragrance", skills: "3 years", description: "Python, Ruby, PHP, C#, Angular, Java Script", price: "68$/h" })
jeremy.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
jeremy.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669370983/Supercoders/15_phzr0f.webp")
naomi = Dev.new({ name: "Naomi", github_link: "https://github.com/naomicampbell", skills: "4 years", description: "JavaScript", price: "71$/h" })
naomi.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
naomi.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/1_xzuuvx.jpg")
steve = Dev.new({ name: "Steve (they/them)", github_link: "https://github.com/steveo", skills: "7 years", description: "Ruby, PHP, Laravel", price: "80$/h" })
steve.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
steve.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/4_dqbteb.jpg")
henry = Dev.new({ name: "Harry", github_link: "https://github.com/harrypotter", skills: "2 years", description: "Python, C#, JavaScript", price: "65$/h" })
henry.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
henry.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/7_qauvce.jpg")
karl = Dev.new({ name: "Karl", github_link: "https://github.com/", skills: "12 years", description: "PHP, JavaScript, Ruby, Python, Java", price: "90$/h" })
karl.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
karl.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288422/3_plutrh.jpg")
tom = Dev.new({ name: "Tom", github_link: "https://github.com/tomford", skills: "2 years", description: "Angular, JavaScript", price: "60$/h" })
tom.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
tom.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/10_lnl5w9.jpg")
claudia = Dev.new({ name: "Claudia", github_link: "https://github.com/claudiaschiffer", skills: "3 years", description: "C, R, Python, Javascript, Ruby", price: "69$/h" })
claudia.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
claudia.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/9_izifwr.jpg")
karen = Dev.new({ name: "Karen (she/her)", github_link: "https://github.com/ragekaren", skills: "8 years", description: "JavaScript, Ruby, JavaScript, Python", price: "85$/h" })
karen.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
karen.save!
file = URI.open("https://res.cloudinary.com/dexz33xuy/image/upload/v1669288423/8_fszaam.jpg")
celine = Dev.new({ name: "Celine", github_link: "https://github.com/oscar007", skills: "2 years", description: "Vue, Angular, JavaScript", price: "62$/h" })
celine.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
celine.save!

puts "finished"

