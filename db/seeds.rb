organizations = [
  {
    user_id: 1, name: 'Roots Young Adult Shelter', contact_phone: '2066321635', image: File.open(File.join('app/assets/images/seeds/rootslogo.png')), population_served: 'teens', annual_funding: 1200000, number_served: 60, shipping_address_1: '1415 NE 43rd St.', shipping_city: 'Seattle', shipping_state: 'WA', shipping_postal_code: 98105, karma: 1, approval_status: 'approved'
  },
  {
    user_id: 2, name: 'Mary\'s Place', contact_phone: '2066218474', image: File.open(File.join('app/assets/images/seeds/marys.png')), population_served: 'women', annual_funding: 540000, number_served: 46, shipping_address_1: '1830 9th Ave', shipping_city: 'Seattle', shipping_state: 'WA', shipping_postal_code: 98101, karma: 2, approval_status: 'approved'
  }
]

organizations.each do |organization|
  Organization.create(organization)
end

projects = [
  {
    organization_id: 1, title: 'Oral Hygiene for Youth in Need', description: 'Help our teen population start the day off right. Dental hygiene is very important and something many of us take for granted.', project_status: 'approved', funding_status: 'not funded', shipping_status: 'shipped', image: File.open(File.join('app/assets/images/seeds/oral-hygiene.jpg')), subtotal: 679.40, total_requested: 710.45,  processing_fees: 31.05, total_donated: 430, total_remaining: 280.45, organization_details: 'ROOTS provides shelter and other essential services to homeless young adults.  We build community, advocate for social justice, and foster dignity among low-income people. Over the last 5 years, ROOTS Young Adult Shelter has seen an enormous increase in the number of times homeless youth have been turned away because of a lack of space. These young people are spiraling out of the foster care system and onto the streets, fleeing abusive homes and failing to find work opportunities to survive in this tough economic climate. ROOTS was the first overnight shelter in the city specifically designed to meet the needs of homeless young adults, and is one of the only co-ed shelters in the city, providing an integral piece of the continuum of care for homeless persons in King County. We mark as our most significant accomplishment that for over eight years, RYAS has operated seven nights per week without ever once having closed due to lack of staffing or volunteers.', project_details:'Mornings are the most important part of our day. We try our hardest to start our youth out on the right foot. That means a healthy breakfast, warm clothes and a hot shower. We are in desperate need of toothbrushes and toothpaste. These products will be used by the teens staying with and visiting us.', expires_on: 'Mon, 2 Nov 2015 18:12:19 -0700'
  },
  {
    organization_id: 1, title: 'A Fresh Start with Resumes', description: 'We are starting a job placement program. These materials will help our population get started with the job search.', image:  File.open(File.join('app/assets/images/seeds/resume.jpg')), project_status: 'approved', funding_status: 'not funded', shipping_status: 'pending', subtotal: 265.94, total_requested: 278.12,  processing_fees: 12.18, total_donated: 170, total_remaining: 108.12, organization_details: 'Lorem ipsum dolor sit amet, commodo tibique sit cu, sit civibus corrumpit patrioque te. Ut eos tantas altera reformidans. Cu vel oratio dolorem eloquentiam. Has id inani aperiam. Omnis evertitur cu vel, quando populo accusam eu vel. Ne sea solet nusquam, usu at modo iusto labitur. Vim ei graece eleifend ullamcorper, mel te audiam sententiae. Ex ancillae honestatis sit, has ei veniam malorum pericula. Sit cu esse antiopam persecuti, perpetua consetetur ei quo. Legendos voluptaria adversarium at mei, eu sed nulla aliquid molestie. Vim soluta evertitur ei. Ex est noster alterum necessitatibus, modo intellegebat vis at. Mea ne illum melius concludaturque. Ei ius vocent bonorum, quo ea diceret nostrum, quo ad suas ridens. Decore regione singulis vix te. Cetero evertitur intellegat vis ex, mei an.', project_details: 'Lorem ipsum dolor sit amet, commodo tibique sit cu, sit civibus corrumpit patrioque te. Ut eos tantas altera reformidans. Cu vel oratio dolorem eloquentiam. Has id inani aperiam. Omnis evertitur cu vel, quando populo accusam eu vel. Ne sea solet nusquam, usu at modo iusto labitur. Vim ei graece eleifend ullamcorper, mel te audiam sententiae. Ex ancillae honestatis sit, has ei veniam malorum pericula. Sit cu esse antiopam persecuti, perpetua consetetur ei quo. Legendos voluptaria adversarium at mei, eu sed nulla aliquid molestie. Vim soluta evertitur ei. Ex est noster alterum necessitatibus, modo intellegebat vis at. Mea ne illum melius concludaturque. Ei ius vocent bonorum, quo ea diceret nostrum, quo ad suas ridens. Decore regione singulis vix te. Cetero evertitur intellegat vis ex, mei an.', expires_on: 'Tue, 26 Jan 2016 18:12:19 -0700'
  },
  {
    organization_id: 2, title: 'winter warmth', description: 'We are entering the coldest time of the year. Help us provide warmth to our community.', image:  File.open(File.join('app/assets/images/seeds/winter-warmth.jpeg')), project_status: 'approved', funding_status: 'funded', shipping_status: 'pending', subtotal: 679.40, total_requested: 710.45,  processing_fees: 31.05, total_donated: 430, total_remaining: 280.45, organization_details: 'Lorem ipsum dolor sit amet, commodo tibique sit cu, sit civibus corrumpit patrioque te. Ut eos tantas altera reformidans. Cu vel oratio dolorem eloquentiam. Has id inani aperiam.Omnis evertitur cu vel, quando populo accusam eu vel. Ne sea solet nusquam, usu at modo iusto labitur. Vim ei graece eleifend ullamcorper, mel te audiam sententiae. Ex ancillae honestatis sit, has ei veniam malorum pericula. Sit cu esse antiopam persecuti, perpetua consetetur ei quo. Legendos voluptaria adversarium at mei, eu sed nulla aliquid molestie. Vim soluta evertitur ei. Ex est noster alterum necessitatibus, modo intellegebat vis at. Mea ne illum melius concludaturque. Ei ius vocent bonorum, quo ea diceret nostrum, quo ad suas ridens. Decore regione singulis vix te. Cetero evertitur intellegat vis ex, mei an.', project_details: 'Lorem ipsum dolor sit amet, commodo tibique sit cu, sit civibus corrumpit patrioque te. Ut eos tantas altera reformidans. Cu vel oratio dolorem eloquentiam. Has id inani aperiam. Omnis evertitur cu vel, quando populo accusam eu vel. Ne sea solet nusquam, usu at modo iusto labitur. Vim ei graece eleifend ullamcorper, mel te audiam sententiae. Ex ancillae honestatis sit, has ei veniam malorum pericula. Sit cu esse antiopam persecuti, perpetua consetetur ei quo. Legendos voluptaria adversarium at mei, eu sed nulla aliquid molestie. Vim soluta evertitur ei. Ex est noster alterum necessitatibus, modo intellegebat vis at. Mea ne illum melius concludaturque. Ei ius vocent bonorum, quo ea diceret nostrum, quo ad suas ridens. Decore regione singulis vix te. Cetero evertitur intellegat vis ex, mei an.', expires_on: 'Sat, 5 Dec 2015 18:12:19 -0700'
  },
  {
    organization_id: 2, title: 'Fresh Face', description: 'We are in need of shaving supplies for our men\'s shelter.', image:  File.open(File.join('app/assets/images/seeds/razors.jpg')), project_status: 'approved', funding_status: 'not funded', shipping_status: 'pending', subtotal: 463.50, total_requested: 484.61,  processing_fees: 21.11, total_donated: 120 , total_remaining: 364.61, organization_details: 'Lorem ipsum dolor sit amet, commodo tibique sit cu, sit civibus corrumpit patrioque te. Ut eos tantas altera reformidans. Cu vel oratio dolorem eloquentiam. Has id inani aperiam. Omnis evertitur cu vel, quando populo accusam eu vel. Ne sea solet nusquam, usu at modo iusto labitur. Vim ei graece eleifend ullamcorper, mel te audiam sententiae. Ex ancillae honestatis sit, has ei veniam malorum pericula. Sit cu esse antiopam persecuti, perpetua consetetur ei quo. Legendos voluptaria adversarium at mei, eu sed nulla aliquid molestie. Vim soluta evertitur ei. Ex est noster alterum necessitatibus, modo intellegebat vis at. Mea ne illum melius concludaturque. Ei ius vocent bonorum, quo ea diceret nostrum, quo ad suas ridens. Decore regione singulis vix te. Cetero evertitur intellegat vis ex, mei an.', project_details: 'Lorem ipsum dolor sit amet, commodo tibique sit cu, sit civibus corrumpit patrioque te. Ut eos tantas altera reformidans. Cu vel oratio dolorem eloquentiam. Has id inani aperiam. Omnis evertitur cu vel, quando populo accusam eu vel. Ne sea solet nusquam, usu at modo iusto labitur. Vim ei graece eleifend ullamcorper, mel te audiam sententiae. Ex ancillae honestatis sit, has ei veniam malorum pericula. Sit cu esse antiopam persecuti, perpetua consetetur ei quo. Legendos voluptaria adversarium at mei, eu sed nulla aliquid molestie. Vim soluta evertitur ei. Ex est noster alterum necessitatibus, modo intellegebat vis at. Mea ne illum melius concludaturque. Ei ius vocent bonorum, quo ea diceret nostrum, quo ad suas ridens. Decore regione singulis vix te. Cetero evertitur intellegat vis ex, mei an.', expires_on: 'Wed, 16 Dec 2015 18:12:19 -0700'
  },
  {
    organization_id: 2, title: 'Distributing Dignity', description: 'Help women with a basic need that many of us take for granted.', image:  File.open(File.join('app/assets/images/seeds/feminine.jpg')), project_status: 'approved', funding_status: 'not funded', shipping_status: 'pending',subtotal: 679.40, total_requested: 710.45,  processing_fees: 31.05, total_donated: 430, total_remaining: 280.45, organization_details: 'Empowering homeless women, children and families to reclaim their lives by providing shelter, nourishment, resources, healing and hope in a safe community. Mary’s Place is a leading voice for homeless women, children, and families in emergency situations. We empower women to reclaim their lives by offering community, acceptance, hope and dignity. Our work keeps struggling families together and provides practical tools and resources that help women find housing and employment. We inspire the community to support homeless women and families through advocacy, partnerships, volunteerism and philanthropy.', project_details: 'Lorem ipsum dolor sit amet, ne vis dissentias disputando. Vis ad graecis sapientem, duo ne putant qualisque maiestatis. Ei propriae legendos vel, an nonumes senserit sea, an his maiorum honestatis. Velit aperiri dignissim vix id, vix ut liber saepe assentior. Paulo fuisset at nam. Pro te impetus deleniti. Sed vocent feugiat dissentiunt ea, cu mei probatus complectitur, his ut velit paulo euismod. Vim esse laboramus neglegentur an, aperiri euripidis theophrastus eos ea, ius epicurei cotidieque ei. Vim ne dicam officiis eloquentiam, sea no mundi lucilius iracundia. Tempor putent nam ex.', expires_on: 'Sat, 5 Dec 2015 18:12:19 -0700'
  }
]

items = [
  {
    project_id: 1, title: 'Colgate Total Whitening Toothpaste Twin Pack (two 6oz tubes)', amazon_id: 'B001KYS2UA', url: 'http://www.amazon.com/Colgate-Total-Whitening-Toothpaste-tubes/dp/B001KYS2UA%3Fpsc%3D1%26SubscriptionId%3DAKIAIZXK3NBASBY74IKQ%26tag%3Dgive0b4-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB001KYS2UA', quantity: 50, price: 7.00, total_cost: 350.00
},
{
  project_id: 1, title: 'Colgate Extra Clean Full Head, Medium Toothbrush, 4-Count (Pack of 3)', amazon_id: 'B003U5Y2HO', url: 'http://www.amazon.com/Colgate-Extra-Medium-Toothbrush-4-Count/dp/B003U5Y2HO%3Fpsc%3D1%26SubscriptionId%3DAKIAIZXK3NBASBY74IKQ%26tag%3Dgive0b4-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB003U5Y2HO', quantity: 25, price: 13.59, total_cost: 339.75
},
{
  project_id: 2, title: "Georgia-Pacific Standard 92 Multipurpose Paper, 8.5x11-Inch, Pack of 3 (998606)",
  amazon_id: "B00BB5DJU6", url: "http://www.amazon.com/Georgia-Pacific-Standard-Multipurpose-8-5x11-Inch-998606/dp/B00BB5DJU6%3Fpsc%3D1%26SubscriptionId%3DAKIAIZXK3NBASBY74IKQ%26tag%3Dgive0b4-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BB5DJU6", quantity: 3, price: 21.99, total_cost: 65.97
},
{
  project_id: 2, title: "Brother HL-L2340DW Compact Laser Printer, Monochrome, Wireless, Duplex Printing",
  amazon_id: "B00LZS5EEI", url:
  "http://www.amazon.com/Brother-HL-L2340DW-Monochrome-Wireless-Printing/dp/B00LZS5EEI%3Fpsc%3D1%26SubscriptionId%3DAKIAIZXK3NBASBY74IKQ%26tag%3Dgive0b4-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00LZS5EEI", quantity: 1, price: 139.99, total_cost: 139.99
},
{
  project_id: 2, title: "EPS Replacement Brother TN660 TN630 Toner Cartridge, High Yield (2,600 Yield) - Black", amazon_id: "B00P2S74W2", url:
  "http://www.amazon.com/EPS-Replacement-Brother-TN660-Cartridge/dp/B00P2S74W2%3FSubscriptionId%3DAKIAIZXK3NBASBY74IKQ%26tag%3Dgive0b4-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00P2S74W2",quantity: 2, price: 29.99, total_cost: 59.98
},
{
  project_id: 4, title: "The Gillette Series Shave Gel With Aloe, Sensitive Skin, 7 Oz Bottle (Pack of 6)", amazon_id: "B001E95HJU", url:
  "http://www.amazon.com/Gillette-Series-Shave-Sensitive-Bottle/dp/B001E95HJU%3FSubscriptionId%3DAKIAIZXK3NBASBY74IKQ%26tag%3Dgive0b4-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB001E95HJU", quantity: 10, price: 23.94, total_cost: 239.4
},
{
  project_id: 4, title: "BIC Twin Select, Sensitive Skin, Disposable Shaver for Men, 10-Count Packages (Pack of 3)", amazon_id: "B0045U1YWE", url:
  "http://www.amazon.com/BIC-Sensitive-Disposable-10-Count-Packages/dp/B0045U1YWE%3FSubscriptionId%3DAKIAIZXK3NBASBY74IKQ%26tag%3Dgive0b4-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0045U1YWE", quantity: 15, price: 14.94, total_cost: 224.1
}

]

items.each do |item|
  Item.create(item)
end

projects.each do |project|
  Project.create(project)
end

users = [
  {
    username: 'brenninja', email: 'brenna@mail.com', password: 'password', first_name: 'Brenna', last_name: 'Leker', donor: true,
    activated:true
  },
  {
    username: 'bojangles', email: 'meowcifer@mail.com', password: 'password', first_name: 'Meowmers', last_name: 'Bojangles', donor: true,
    activated:true
  },
  {
    username: 'mickey', email: 'mickey@mail.com', password: 'password', first_name: 'Mickey', last_name: 'Mouse', donor: true,
    activated:true
  },
  {
    username: 'minnie', email: 'mickey@mail.com', password: 'password', first_name: 'Minnie', last_name: 'Mouse', donor: true,
    activated:true
  },
  {
    username: 'donald', email: 'donald@mail.com', password: 'password', first_name: 'Donald', last_name: 'Duck', donor: true,
    activated:true
  }
]

users.each do |user|
  User.create(user)
end

volunteers = [
  {
    user_id: 1, bio: 'I\'m awesome.', approval_status: 'approved', role: 'data wrangler'
   },
  {
    user_id: 2, bio: 'I\'m even awesomer.', approval_status: 'pending', role: 'tech wiz'
  },
  {
    user_id: 3, bio: 'The awesomest.', approval_status: 'pending', role: 'data wrangler'
  }
]

volunteers.each do |volunteer|
  Volunteer.create(volunteer)
end
