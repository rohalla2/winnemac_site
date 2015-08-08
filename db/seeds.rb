User.destroy_all
Unit.destroy_all

unit1 = Unit.new(
	id: 1,
	title: "Unit 1",
	subtitle: "2 Bedroom + Office / 1 Bath",
	price: 1375,
	available: true,
	description: "Two Bedroom, One Bath Apartment available starting July 1st in Lincoln Square.
	<br>
	<ul>
		<li> New kitchen</li>
		<li> New Appliances, Including Dishwasher</li>
		<li> Access to laundry from unit</li>
		<li> Includes Office </li>
		<li> Close to Buses and Brown Line (Western Stop)</li>
		<li> Parking available.</li>
		<li> No pets.</li>
	</ul>
	<br>
	WalkScore: 92 -- Walker's Paradise"
)
unit2 = Unit.new(
	id: 2,
	title: "Unit 2",
	subtitle: "2 Bedroom / 1 Bath",
	price: 1050,
	available: true,
	description: "<ul>
		<li>New kitchen and bathroom</li>
		<li>Newly painted</li>
		<li>Close to Brown Line (Western Stop)</li>
		<li>Short walk to the heart of Lincoln Square Shopping & Entertainment</li>
	</ul>
	<br>
	WalkScore: 92 -- Walker's Paradise"
)
unit3 = Unit.new(
	id: 3,
	title: "Unit 3",
	subtitle: "1 Bedroom / 2.5 Bath",
	price: 1425,
	available: true,
	description: "Come see this amazing, spacious single family house in Lincoln Square.
	Close to the Brown Line, grocery stores, and great restaurants.
	<br>
	Features Include:
	<ul>
		<li>In Unit Laundry</li>
		<li>Working Fireplaces</li>
		<li>Large Master Bathroom</li>
		<li>Hardwood Floors</li>
	</ul>
	<br>
	WalkScore: 92 -- Walker's Paradise"
)

unit1.save
unit2.save
unit3.save

Image.destroy_all

images = [
	{unit_id: unit1.id, image_url: "1/kitchen_fridge.png", main: true, description: "Kitchen"},
	{unit_id: unit1.id, image_url: "1/kitchen_oven.png", main: false, description: "Kitchen"},
	{unit_id: unit1.id, image_url: "1/kitchen_sink.png", main: false, description: "Kitchen"},
	{unit_id: unit1.id, image_url: "1/office.png", main: false, description: "Office"},
	{unit_id: unit1.id, image_url: "1/office_2.png", main: false, description: "Office"},
	{unit_id: unit1.id, image_url: "1/office_3.png", main: false, description: "Office"},
	{unit_id: unit1.id, image_url: "1/bathroom.png", main: false, description: "Bathroom"},
	{unit_id: unit1.id, image_url: "1/bathroom_2.png", main: false, description: "Bathroom"},
	{unit_id: unit1.id, image_url: "1/front_room.png", main: false, description: "Front Room"},
	{unit_id: unit1.id, image_url: "ext_front.png", main: false, description: "Front"},
	{unit_id: unit1.id, image_url: "ext_side.png", main: false, description: "Side Yard"},
	{unit_id: unit1.id, image_url: "1/back_bedroom.png", main: false, description: "Bedroom 2"},
	{unit_id: unit1.id, image_url: "1/back_bedroom_2.png", main: false, description: "Bedroom 2"},
	{unit_id: unit1.id, image_url: "1/front_bedroom.png", main: false, description: "Bedroom 1"},
	{unit_id: unit1.id, image_url: "1/front_bedroom_2.png", main: false, description: "Bedroom 1"}, 

	{unit_id: unit2.id, image_url: "2/kitchen_oven.png", main: true, description: "Kitchen"},
	{unit_id: unit2.id, image_url: "2/fridge.png", main: false, description: "Kitchen Fridge"},
	{unit_id: unit2.id, image_url: "2/kitchen_sink.png", main: false, description: "Kitchen"},
	{unit_id: unit2.id, image_url: "2/bathroom_mirror.png", main: false, description: "Bathroom"},
	{unit_id: unit2.id, image_url: "2/bathroom_toilet.png", main: false, description: "Bathroom"},
	{unit_id: unit2.id, image_url: "2/bathroom_shower.png", main: false, description: "Bathroom Shower"},
	{unit_id: unit2.id, image_url: "2/living_room_2.png", main: false, description: "Living Room"},
	{unit_id: unit2.id, image_url: "2/living_room_3.png", main: false, description: "Living Room"},
	{unit_id: unit2.id, image_url: "2/bedroom_1.png", main: false, description: "First Bedroom"},
	{unit_id: unit2.id, image_url: "2/bedroom_2.png", main: false, description: "Second Bedroom"},
	{unit_id: unit2.id, image_url: "ext_front.png", main: false, description: "Front"},
	{unit_id: unit2.id, image_url: "ext_side.png", main: false, description: "Side Yard"}
]

Image.create images

Space.destroy_all

spaces = [
	{title: "Garage Space 1", description: "Space in the garage.", image_url: "parking.png", price: 120, available: true},
	{title: "Garage Space 2", description: "Space in the garage.", image_url: "parking.png", price: 120, available: true},
	{title: "Uncovered Space 1", description: "Outside space.", image_url: "parking.png", price: 70, available: true},
	{title: "Uncovered Space 2", description: "Outside space.", image_url: "parking.png", price: 70, available: true}
]

Space.create spaces