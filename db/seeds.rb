puts "Cleaning database..."
Dev.destroy_all

puts "Creating supercoders..."

mike = { name: "Mike", github_link: "https://github.com/magicmike", skills: "5 years", description: "Ruby, C#", price: "72$/h" }
aquachad = { name: "AquaChad", github_link: "https://github.com/aquachad123", skills: "2 years", description: "JavaScript", price: "65$/h" }
bill = { name: "Bill", github_link: "https://github.com/billgates95", skills: "20 years", description: "C#, Python, Java, Swift", price: "100$/h" }
jeremy = { name: "Jeremy", github_link: "https://github.com/jeremyfragrance", skills: "3 years", description: "Python, Ruby", price: "68$/h" }
naomi = { name: "Naomi", github_link: "https://github.com/naomicampbell", skills: "4 years", description: "JavaScript", price: "71$/h" }
steve = { name: "Steve", github_link: "https://github.com/steveo", skills: "7 years", description: "Ruby, PHP", price: "80$/h" }
harry = { name: "Harry", github_link: "https://github.com/harrypotter", skills: "2 years", description: "C#, JavaScript", price: "65$/h" }
karl = { name: "Karl", github_link: "https://github.com/", skills: "12 years", description: "JavaScript, Ruby, Python Java", price: "90$/h" }
tom  = { name: "Tom", github_link: "https://github.com/tomford", skills: "2 years", description: "JavaScript", price: "60$/h" }
claudia = { name: "Claudia", github_link: "https://github.com/claudiaschiffer", skills: "3 years", description: "Python, Javascript, Ruby", price: "69$/h" }
karen = { name: "Karen", github_link: "https://github.com/ragekaren", skills: "8 years", description: "JavaScript, Ruby, JavaScript, Python", price: "85$/h" }
oscar  = { name: "Oscar", github_link: "https://github.com/oscar007", skills: "2 years", description: "JavaScript", price: "62$/h" }

[mike, aquachad, bill, jeremy, naomi, steve, harry, karl, tom, claudia, karen, oscar].each do |attributes|
  supercoder = Dev.create!(attributes)
  puts "Created #{supercoder.name}"
end
puts "finished"

