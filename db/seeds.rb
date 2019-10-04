Contract.destroy_all
Tenant.destroy_all
Listing.destroy_all
User.destroy_all

t1 = Tenant.create(name: Faker::Name.name, salary: 100000, credit_score: 800, available: true)
t2 = Tenant.create(name: Faker::Name.name, salary: 320000, credit_score: 760, available: true)
t3 = Tenant.create(name: Faker::Name.name, salary: 90000, credit_score: 650, available: true)
t4 = Tenant.create(name: Faker::Name.name, salary: 140000, credit_score: 700, available: true)
t5 = Tenant.create(name: Faker::Name.name, salary: 60000, credit_score: 5800, available: true)
t6 = Tenant.create(name: Faker::Name.name, salary: 110000, credit_score: 580, available: true)
t7 = Tenant.create(name: Faker::Name.name, salary: 99000, credit_score: 730, available: true)
t8 = Tenant.create(name: Faker::Name.name, salary: 100000, credit_score: 700, available: true)
t9 = Tenant.create(name: Faker::Name.name, salary: 320000, credit_score: 610, available: true)
t10 = Tenant.create(name: Faker::Name.name, salary: 90000, credit_score: 350, available: true)
t11 = Tenant.create(name: Faker::Name.name, salary: 140000, credit_score: 800, available: true)
t12 = Tenant.create(name: Faker::Name.name, salary: 60000, credit_score: 3600, available: true)
t13 = Tenant.create(name: Faker::Name.name, salary: 110000, credit_score: 280, available: true)
t14 = Tenant.create(name: Faker::Name.name, salary: 99000, credit_score: 730, available: true)
t15 = Tenant.create(name: Faker::Name.name, salary: 59000, credit_score: 840, available: true)

Listing.create(address: "81 Prospect Street", price: 4000.00, bedrooms: 3, available: true)
Listing.create(address: "0001 Cemetery Lane", price: 6200.00, bedrooms: 8, available: true)
Listing.create(address: "1630 Revello Drive", price: 2800.00, bedrooms: 4, available: true)
Listing.create(address: "900 Park Avenue", price: 1700.00, bedrooms: 0, available: true)
Listing.create(address: "173 Essex Drive", price: 3600.00, bedrooms: 1, available: true)
Listing.create(address: "320 Fowler Street", price: 5500.00, bedrooms: 6, available: true)
Listing.create(address: "565 N. Clinton Drive", price: 4300.00, bedrooms: 3, available: true)
Listing.create(address: "7 East 76th Street", price: 5500.00, bedrooms: 2, available: true)
Listing.create(address: "328 Chauncey Street", price: 15000.00, bedrooms: 7, available: true)
Listing.create(address: "84 Rainey Street", price: 6800.00, bedrooms: 5, available: true)
Listing.create(address: "698 Candlewood Lane", price: 600.00, bedrooms: 0, available: true)
Listing.create(address: "1313 Mockingbird Lane", price: 12000.00, bedrooms: 3, available: true)
Listing.create(address: "1049 Park Avenue", price: 3100.00, bedrooms: 3, available: true)