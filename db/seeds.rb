# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.new
user.email = "admin@example.com"
user.password = 'password123'
user.password_confirmation = 'password123'
user.save!

lipsum = [
"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque venenatis, enim cursus porttitor aliquam, turpis quam sodales nunc, in lobortis lacus sapien et ipsum. Nunc ante nibh, sodales ut nunc in, faucibus molestie ligula. Aenean nec accumsan mi. Vestibulum velit mauris, congue non lobortis ac, ultrices ac lacus. Praesent dignissim nec neque condimentum auctor. Quisque mattis orci elementum, venenatis ex ut, placerat sem. Ut efficitur tincidunt odio, sed tincidunt augue varius id. Maecenas pulvinar elit et eros mattis, in rutrum mi euismod. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec volutpat eleifend congue. Duis fringilla lobortis enim quis ullamcorper. Sed laoreet dui ut metus porttitor viverra. Praesent ac ultricies nulla. Donec laoreet velit a enim lacinia, eget tincidunt diam convallis. Duis rhoncus ultrices odio, sit amet porttitor lorem vestibulum ut. Phasellus gravida est lacus, non semper tellus vestibulum nec.",
"In pellentesque rhoncus dignissim. Nam id rutrum mauris. Nam egestas ligula suscipit neque dapibus, in pulvinar lorem vehicula. Etiam a nibh eu neque consequat semper. Duis sed nunc eget metus ultricies ullamcorper nec vitae mi. Integer varius urna quis mauris fringilla, vitae aliquam dolor pharetra. Proin metus enim, vestibulum quis tempor sed, efficitur eu erat. Curabitur tristique, arcu eu ultricies egestas, justo lorem egestas nisi, vel iaculis velit nibh nec magna. Integer sed mattis lacus. Morbi ullamcorper vel nisi eget maximus. Nunc porta, enim eget facilisis ornare, ipsum tellus ultricies ligula, gravida maximus massa justo vel velit.",
"Nam commodo sollicitudin lacus sit amet facilisis. Phasellus ac tortor id diam faucibus elementum. Donec sed elit turpis. Vestibulum tristique finibus sapien et consectetur. Aenean sed gravida quam, at euismod turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer elementum nisl metus, et vestibulum purus pulvinar et. Nam dictum finibus tincidunt. Donec vel diam non sem sollicitudin congue blandit porta sapien. Vivamus fermentum sit amet turpis pharetra malesuada. Praesent vestibulum blandit dolor, vel gravida sapien blandit a. Vestibulum fringilla ultricies nulla, in luctus ipsum suscipit id.",
"Mauris tristique hendrerit lacus pharetra ornare. Duis at sollicitudin nibh, id semper eros. Donec nibh leo, suscipit ornare nunc eget, laoreet rhoncus nisi. Pellentesque non interdum urna. Sed consequat velit et ultricies sollicitudin. Quisque semper augue vel metus placerat, quis tincidunt enim pharetra. Proin tempus varius rhoncus.",
"Fusce sollicitudin gravida arcu, et tempus dui congue quis. Nulla egestas lacus libero, non rhoncus massa fringilla at. Nullam pretium diam nec posuere faucibus. Curabitur rhoncus sed leo at efficitur. Maecenas consequat blandit cursus. Sed ornare libero vel luctus hendrerit. Vivamus pretium ultricies erat, at accumsan erat suscipit vehicula. Proin tincidunt nibh non tincidunt blandit."
]

95.times do |i|
  user.bounties.create(
    title: "Bounty ##{i}",
    description: lipsum[rand(0..4)],
    url: "https://github.com/excid3/beginnerbounties.com",
    amount: rand(25..200),
  )
end
