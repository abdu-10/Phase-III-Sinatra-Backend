puts "🌱 Seeding owners..."
10.times do
    #Creates 10 ownersctors who will add their bikes to the platform
    Owner.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        avatar: Faker::LoremFlickr.image,
        location: Faker::Address.full_address,
        email: Faker::Internet.email,
        phone_number: rand(254700000000..254799999999)        
    )    
end

puts "✅ Owners created, wait while we create bikes!⏳"
puts "🌱 Seeding bikes..."
20.times do
    #Creates 20 bikes owned y any of 10 owners
    Bike.create(
        model: Faker::Vehicle.make,
        reg_number: Faker::Vehicle.license_plate,
        cc: rand(150..1000),
        price: rand(500..1000),
        booked: true,
        owner_id: rand(1..10),
        rider_id: rand(1..20)
    )    
end


puts "✅ Bikes created, wait while we create riders!⏳"
puts "🌱 Seeding Riders..."
20.times do
    #Creates 20 riders who will get bikes from the platform
    Rider.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        avatar: Faker::LoremFlickr.image,
        location: Faker::Address.full_address,
        email: Faker::Internet.email,
        phone_number: rand(254700000000..254799999999),
        id_number: rand(1111111..38999999),  
        license_number: rand(1111..9999),
        spouse_contact: rand(254700000000..254799999999)
    )    
end


puts "✅Database Seeded successfully, cheers!"

