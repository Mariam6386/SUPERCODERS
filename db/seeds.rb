puts "Cleaning database..."
Supercoder.destroy_all

puts "Creating supercoders..."

mike = { name: "Mike", github_link: "https://github.com/magicmike", experience: "5 years", description: "Ruby, C#", price: "72$/h" }
aquachad = { name: "AquaChad", github_link: "https://github.com/aquachad123", experience: "2 years", description: "JavaScript", price: "65$/h" }
bill = { name: "Bill", github_link: "https://github.com/billgates95", experience: "20 years", description: "C#, Python, Java, Swift", price: "100$/h" }
jeremy = { name: "Jeremy", github_link: "https://github.com/jeremyfragrance", experience: "3 years", description: "Python, Ruby", price: "68$/h" }
naomi = { name: "Naomi", github_link: "https://github.com/naomicampbell", experience: "4 years", description: "JavaScript", price: "71$/h" }
steve = { name: "Steve", github_link: "https://github.com/steveo", experience: "7 years", description: "Ruby, PHP", price: "80$/h" }
harry = { name: "Harry", github_link: "https://github.com/harrypotter", experience: "2 years", description: "C#, JavaScript", price: "65$/h" }
karl = { name: "Karl", github_link: "https://github.com/", experience: "12 years", description: "JavaScript, Ruby, Python Java", price: "90$/h" }
tom  = { name: "Tom", github_link: "https://github.com/tomford", experience: "2 years", description: "JavaScript", price: "60$/h" }
claudia = { name: "Claudia", github_link: "https://github.com/claudiaschiffer", experience: "3 years", description: "Python, Javascript, Ruby", price: "69$/h" }
karen = { name: "Karen", github_link: "https://github.com/ragekaren", experience: "8 years", description: "JavaScript, Ruby, JavaScript, Python", price: "85$/h" }
oscar  = { name: "Oscar", github_link: "https://github.com/oscar007", experience: "2 years", description: "JavaScript", price: "62$/h" }

[mike, aquachad, bill, jeremy, naomi, steve, harry, karl, tom, claudia, karen, oscar].each do |attributes|
  supercoder = Supercoder.create!(attributes)
  puts "Created #{supercoder.name}"
end
puts "finished"
