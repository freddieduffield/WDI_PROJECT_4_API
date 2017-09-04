
Building.destroy_all
User.destroy_all

u1 = User.create!(username: "fred", email: "fred@ga.co", password: "password", password_confirmation: "password")

Period.create!([
  {
  name: "18th Century"
},
{
  name: "19th Century"
},
{
  name: "20th Century"
},
{
  name: "21st Century"
}
  ])

Building.create!([
{name: "Aylesbury Estate",
address: "Walworth, Southwark, London, England",
lat_lng:[51.486403, -0.085058],
description: "The Aylesbury Estate is a large housing estate located in Walworth, South East London. The Aylesbury Estate contains 2,704 dwellings and was built between 1963 and 1977",
image: "https://www.architectsjournal.co.uk/pictures/2000x2000fit/2/0/9/3040209_Aylesbury-Estate.jpg",
user_id: u1.id,
period_id: 43},
{name: "Aylesbury Estate",
address: "Walworth, Southwark, London, England",
lat_lng:[51.486403, -0.085058],
description: "The Aylesbury Estate is a large housing estate located in Walworth, South East London. The Aylesbury Estate contains 2,704 dwellings and was built between 1963 and 1977",
image: "https://www.architectsjournal.co.uk/pictures/2000x2000fit/2/0/9/3040209_Aylesbury-Estate.jpg",
user_id: u1.id,
period_id: 43
}
])

p "Created #{Period.count} periods"
p "Created #{Building.count} buildings"
