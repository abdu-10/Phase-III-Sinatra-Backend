Bike Fleet Management.

Problem statement.
Many people find it difficult to venture into the commute transport industry due to tough labor seeking,
defaulted payments on hired machinery and inefficient management strategies, leading to a grounded fleet, defaulted payments
and even property loss.

Solution.
A platform that allows proprietors to hire, receive payment in advance, and manage their workforce through specific
access to vetted bio and geo data.

Basis
- Sole proprietors have the ability to, having bought a fleet or a unit, to rent it out to riders for use
and thus remuneration for the period contracted.

- A rider may onboard the platform and hire a ride for use after sufficient data provision.

- The bike is paid for use by a rider for the desired period, before access.

Technical Appropriation.
	Frontend(Interfaces)
//TODO: Make figma/designs for UI/UX

	Backend(Models, Views and Controllers)
//TODO: Make ERDs for table relations

i. Models
- Owner
has_many bikes and has many riders through bikes
- Rider
belongs to an owner
- Bike
belongs to an owner and belongs to a rider

ii. Tables
- Owners
first_name, last_name, location, avatar, email, phone_number
- Riders
first_name, last_name, location, avatar, email, phone_number, id_number, driver_licence, spouse_number
- Bikes
model, cc, reg_numer, price, booked? FK(owner_id, rider_id)

iii. Controllers/actions/Routes
// TODO: Create a postman collection for api routes
1. POST "/owners"
2. POST "/bikes"
3. get "/riders"
4. get "/bikes/:owner_id"
5. get "/bikes/:owner_id/payments"

6. POST "/riders"
7. get "/bikes"
8. PATCH "/bikes/:id"
9. get "/bike/:owner_id"

10. delete "/user/:id"

MVP
1. An owner is able to register on the platform
2. An owner is able to post a bike to the platform
3. An owner is able to view all drivers on the platform
4. An owner is able to view the riders who have booked their bikes.
5. An owner is able to keep track of payments on their bike.

6. A rider is able to Register on the platform
7. A rider is able to see all available bikes
8. A rider is able to book a ride and pay for it
9. A rider is able to gain access to the booked bike.

10. Platform users are able to delete their accounts.


