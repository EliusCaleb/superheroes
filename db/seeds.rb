puts 'seeding'
h1= Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel" )
h2= Hero.create( name: "Doreen Green", super_name: "Squirrel Girl" )
h3= Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen" )
h4= Hero.create(name: "Peter Parker", super_name: "Spiderman")
h5= Hero.create(name: "Barry Allen", super_name: "Flash")

p1= Power.create(name: "super strength",description: "gives the wielder super-human strengths")
p2= Power.create(name: "flight",description: "gives the wielder the ability to fly through the skies at supersonic speed")
p3 = Power.create(name: "Super Stamina", description: "The ability to endure great physical stress without tiring.")
p4 = Power.create(name: "Super Agility", description: "The ability to move with great agility and balance.")


HeroPower.create!(strength:"Strong", power_id:2, hero_id: 1)
HeroPower.create!(strength:"Weak", power_id:3, hero_id: 2)
HeroPower.create!(strength:"Average", power_id:4, hero_id: 4)
HeroPower.create!(strength:"Weak", power_id:2, hero_id: 3)
HeroPower.create!(strength:"Strong", power_id:2, hero_id: 5)
HeroPower.create!(strength:"Weak", power_id:4, hero_id: 2) 
HeroPower.create!(strength:"Average", power_id:4, hero_id: 5)
puts  'Done'