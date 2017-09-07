
Building.destroy_all
User.destroy_all
Period.destroy_all

p1= Period.create!(name: "18th century", image: "/images/StPauls.svg" )
p2= Period.create!(name: "19th century", image: "/images/BIgBen.svg" )
p3= Period.create!(name: "20th century", image: "/images/lloyds.svg")
p4= Period.create!(name: "21st century", image: "/images/gher.svg")

u1 = User.create!(username: "fred", email: "fred@fred.com", password: "password", password_confirmation: "password")
u2 = User.create!(username: "William", email: "will@will.com", password: "password", password_confirmation: "password")
u3 = User.create!(username: "Henry", email: "henry@henry.com", password: "password", password_confirmation: "password")



Building.create!(
name: "Aylesbury Estate",
address: "Walworth, Southwark, London, England",
lat: 51.486403,
long: -0.085058,
description: "The Aylesbury Estate is a large housing estate located in Walworth, South East London. The Aylesbury Estate contains 2,704 dwellings and was built between 1963 and 1977",
image: "https://www.architectsjournal.co.uk/pictures/2000x2000fit/2/0/9/3040209_Aylesbury-Estate.jpg",
creator_id: u2.id,
period_id: p3.id)

Building.create!(
name: "The Shard",
address: "32 London Bridge St, London SE1 9SG",
lat:51.502664656, 
long: -0.0855164,
description: "The Shard, also referred to as the Shard of Glass, Shard London Bridge and formerly London Bridge Tower, is a 95-storey skyscraper in Southwark, London, that forms part of the London Bridge Quarter developmen",
image: "https://cdn.londonandpartners.com/asset/the-view-from-the-shard-the-shard-e59e5b2d5b45b6d851c45877f3617644.jpg",
creator_id: u3.id,
period_id: p4.id)

Building.create!(
name: "Christ Church, Spitalfields ",
address: "Commercial Road, London ",
lat: 51.5045,
long: -0.0886887,
description: "Christ Church Spitalfields, is an Anglican church built between 1714 and 1729 to a design by Nicholas Hawksmoor. Situated on Commercial Street, in the London Borough of Tower Hamlets, on its western border and facing the City of London, it was one of the first (and arguably one of the finest) of the so-called \"Commissioners' Churches\" built for the Commission for Building Fifty New Churches, which had been established by an Act of Parliament in 1711.\n

The purpose of the Commission was to acquire sites and build fifty new churches to serve Londons new settlements. This parish was carved out of the huge medieval Stepney parish for an area then dominated by Huguenots (French Protestants and other dissenters who owed no allegiance to the Church of England and thus to the King) as a show of Anglican authority. Some Huguenots used it for baptisms, marriages and burials but not for everyday worship, preferring their own chapels (their chapels were severely plain compared with the bombastic English Baroque style of Christ Church) though increasingly they assimilated into English life and Anglican worship—which was in the eighteenth century relatively plain.\n

The Commissioners for the new churches included Christopher Wren, Thomas Archer and John Vanbrugh appointed two surveyors, one of whom was Nicholas Hawksmoor. Only twelve of the planned fifty churches were built, of which six were designed by Hawksmoor.",
image: "https://upload.wikimedia.org/wikipedia/commons/2/23/Christ_Church%2C_Spitalfields.JPG",
creator_id: u2.id,
period_id: p1.id)

Building.create!(
name: "Bishopgate Institue ",
address: "230 Bishopsgate, London EC2M 4QH",
lat: 51.5186849,
long: -0.0810348,
description: "The Grade II* listed building was the first of the three major buildings designed by architect Charles Harrison Townsend (1851–1928).[1] The other two are the nearby Whitechapel Gallery and the Horniman Museum in south London.[2] His work combined elements of the Arts and Crafts movement and Art Nouveau style, along with the typically Victorian.

Since opening on New Year's Day 1895, the Bishopsgate Institute has been a centre for culture and learning.

The original aims of the Institute were to provide a public library, public hall and meeting rooms for people living and working in the City of London. The Great Hall in particular was erected for the benefit of the public to promote lectures, exhibitions and otherwise the advancement literature, science and the fine arts.

The Bishopsgate Institute was built using funds from charitable endowments made to the parish of St Botolph's, Bishopsgate. These had been collected by the parish for over a period of 500 years, but a scheme agreed by the Charity Commissioners in 1891, enabled these to be drawn together into one endowment. Reverend William Rogers (1819–1896), Rector of St Botolph's and a notable educational reformer and supporter of free libraries, was instrumental in setting up the Institute and ensuring that the original charitable aims were met.",
image: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Bishopsgate_Institute%2C_Bishopsgate%2C_EC2.jpg",
creator_id: u3.id,
period_id: p2.id)


Building.create!(
name: "Whitechapel Gallery ",
address: "77-82 Whitechapel High St, London E1 7QX",
lat: 51.5160375,
long: -0.0722831,
description: "The Grade II* listed building was the first of the three major buildings designed by architect Charles Harrison Townsend (1851–1928).[1] The other two are the nearby Whitechapel Gallery and the Horniman Museum in south London.[2] His work combined elements of the Arts and Crafts movement and Art Nouveau style, along with the typically Victorian.

Since opening on New Year's Day 1895, the Bishopsgate Institute has been a centre for culture and learning.

The original aims of the Institute were to provide a public library, public hall and meeting rooms for people living and working in the City of London. The Great Hall in particular was erected for the benefit of the public to promote lectures, exhibitions and otherwise the advancement literature, science and the fine arts.

The Bishopsgate Institute was built using funds from charitable endowments made to the parish of St Botolph's, Bishopsgate. These had been collected by the parish for over a period of 500 years, but a scheme agreed by the Charity Commissioners in 1891, enabled these to be drawn together into one endowment. Reverend William Rogers (1819–1896), Rector of St Botolph's and a notable educational reformer and supporter of free libraries, was instrumental in setting up the Institute and ensuring that the original charitable aims were met.",
image: "https://www.mimoa.eu/images/29029_l.jpg",
creator_id: u1.id,
period_id: p2.id)


Building.create!(
name: "Brick Lane Mosque",
address: "59 Brick Ln, London E1 6QL",
lat: 51.5191534,
long: -0.0723966,
description: "The building has served the religions of a succession of other communities in the area.

Christian
It was first established in 1743 as a Protestant chapel (\"La Neuve Eglise\", i.e. \"the New Church\") by London's Huguenot community.[8] These were refugees who had left France after the Revocation of the Edict of Nantes in 1685, to escape persecution by the Catholics. Many Huguenots settled in Spitalfields, bringing with them their silk-weaving and textile skills. As they were Protestant Dissenters, not members of the Church of England, they built their own chapels. Christ Church, Spitalfields on Fournier Street, designed by the architect Nicholas Hawksmoor, was built during the reign of Queen Anne to demonstrate the power of the established church.[9] 59 Brick Lane survived as a Huguenot chapel for more than six decades.

In 1809 it became a Wesleyan chapel, bought by the London Society for Promoting Christianity Amongst the Jews, an organisation now known as the Church's Ministry Among Jewish People, but this phase of its history lasted only 10 years. From 1819, the building became a Methodist chapel.[10]

Jewish
In the late 19th century, the building was adopted by yet another community: it became the Machzike Hadath, the Spitalfields Great Synagogue. During this time (see History of the Jews in England), the area was home to many Jewish refugees from Russia and Central Europe.[11] From the 1880s through the early part of the 20th century, massive pogroms and the May Laws in Russia caused many Jews to flee the Pale of Settlement. Of the East European Jewish emigrants, 140 000 settled in Britain. From 1916, the synagogue's leader was the notable Abraham Isaac Kook, later the first Ashkenazi chief rabbi of the British Mandatory Palestine. Nearby was the purpose-built Great Synagogue of London and another church building that had become a Jewish place of worship, the Sandys Row Synagogue. The population of Jews decreased over the years, with many moving to areas of North London. The synagogue eventually moved to new premises in Golders Green.[13]

Muslim
During the 1970s, the area of Spitalfields and Brick Lane was populated mainly by Bangladeshis who had come to Britain from the Sylhet region looking for better work. Many found work in factories and the textile trade. That growing community required a place of worship, and the building at 59 Brick Lane was bought and refurbished. In 1976, it reopened as a mosque, the London Jamme Masjid. Today, although it has been renamed, it still serves the Bangladeshi community as a mosque",
image: "https://en.wikipedia.org/wiki/Brick_Lane_Mosque#/media/File:Brick_Lane_Mosque2.JPG",
creator_id: u1.id,
period_id: p1.id)

Building.create!(
name: "Barbican",
address: "Silk St, London EC2Y 8DS",
lat: 51.5200768,
long: -0.0954517,
description: "The Barbican Centre is a performing arts centre in the City of London and the largest of its kind in Europe. The Centre hosts classical and contemporary music concerts, theatre performances, film screenings and art exhibitions.",
image: "https://en.wikipedia.org/wiki/Brick_Lane_Mosque#/media/File:Brick_Lane_Mosque2.JPG",
creator_id: u2.id,
period_id: p3.id
)

Building.create!(
name: "Relay Building",
  address: "114 Whitechapel High St, London E1 7PT",
lat: 51.5152519,
long: -0.0745329,
description: "Contemporary Office Space, home of general assembly",
image: "http://manchesterhistory.net/architecture/2010/commercial3.jpg",
creator_id: u3.id,
period_id: p4.id
)






p "Created #{Period.count} periods"
p "Created #{Building.count} buildings"
