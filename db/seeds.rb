puts "Cleaning database..."
Dev.destroy_all

puts "Creating supercoders..."

mike = { name: "Mike", github_link: "https://github.com/magicmike", skills: "5 years", description: "Ruby, C#", price: "72$/h", address: "101 Johnson St, Brooklyn, NY" }#
aquachad = { name: "AquaChad", github_link: "https://github.com/aquachad123", skills: "2 years", description: "JavaScript", price: "65$/h", address: "30 Rue de Rome, 13001 Marseille, Frankreich" }#
bill = { name: "Bill", github_link: "https://github.com/billgates95", skills: "20 years", description: "Python, Java, C#, Swift", price: "100$/h", address: "Rudi-Dutschke-Straße 26, Berlin" }#
jeremy = { name: "Jeremy", github_link: "https://github.com/jeremyfragrance", skills: "3 years", description: "Python, Ruby", price: "68$/h", address: "16 Villa Gaudelet, Paris" }#
naomi = { name: "Naomi", github_link: "https://github.com/naomicampbell", skills: "4 years", description: "JavaScript", price: "71$/h", address: "Stationsplein, 1012 AB Amsterdam" }#
steve = { name: "Steve", github_link: "https://github.com/steveo", skills: "7 years", description: "Ruby, PHP", price: "80$/h", address: "Passeig de Neptú, 3, 46011 València" }#
harry = { name: "Harry", github_link: "https://github.com/harrypotter", skills: "2 years", description: "C#, JavaScript", price: "65$/h", address: "Ehrenstraße 70, Cologne" }#
karl = { name: "Karl", github_link: "https://github.com/", skills: "12 years", description: "JavaScript, Ruby, Python Java", price: "90$/h", address: "Ermou 4, Athina 105 63, Griechenland" }
tom  = { name: "Tom", github_link: "https://github.com/tomford", skills: "2 years", description: "JavaScript", price: "60$/h", address: "Królewska 11, 00-065 Warszawa, Polen" }#
claudia = { name: "Claudia", github_link: "https://github.com/claudiaschiffer", skills: "3 years", description: "Python, Javascript, Ruby", price: "69$/h", address: "Via Piave Vecchio, 47-48, 30016 Jesolo VE, Italien" }#
karen = { name: "Karen", github_link: "https://github.com/ragekaren", skills: "8 years", description: "JavaScript, Ruby, JavaScript, Python", price: "85$/h", address: "C. d'Arístides Maillol, 12, 08028 Barcelona, Spanien" }#
oscar  = { name: "Oscar", github_link: "https://github.com/oscar007", skills: "2 years", description: "JavaScript", price: "62$/h", address: "London SW1A 0AA, Vereinigtes Königreich" }#

[mike, aquachad, bill, jeremy, naomi, steve, harry, karl, tom, claudia, karen, oscar].each do |attributes|
  supercoder = Dev.create!(attributes)
  puts "Created #{supercoder.name}"
end
puts "finished"
