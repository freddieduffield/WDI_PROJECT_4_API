Period.destroy_all
Building.destroy_all
User.destroy_all


p1= Period.create!(name: "18th century")
p2= Period.create!(name: "19th century")
p3= Period.create!(name: "20th century")
p4= Period.create!(name: "21st century")



u1 = User.create!(username: "fred", email: "fred@fred.com", password: "password", password_confirmation: "password")



Building.create!(
name: "Aylesbury Estate",
address: "Walworth, Southwark, London, England",
lat: 51.486403,
long: -0.085058,
description: "The Aylesbury Estate is a large housing estate located in Walworth, South East London. The Aylesbury Estate contains 2,704 dwellings and was built between 1963 and 1977",
image: "https://www.architectsjournal.co.uk/pictures/2000x2000fit/2/0/9/3040209_Aylesbury-Estate.jpg",
creator_id: u1.id,
period_id: p3.id)

Building.create!(
name: "The Shard",
address: "32 London Bridge St, London SE1 9SG",
lat:51.502664656,
long: -0.085332992,
description: "The Shard, also referred to as the Shard of Glass, Shard London Bridge and formerly London Bridge Tower, is a 95-storey skyscraper in Southwark, London, that forms part of the London Bridge Quarter developmen",
image: "https://cdn.londonandpartners.com/asset/the-view-from-the-shard-the-shard-e59e5b2d5b45b6d851c45877f3617644.jpg",
creator_id: u1.id,
period_id: p4.id)


p "Created #{Period.count} periods"
p "Created #{Building.count} buildings"
