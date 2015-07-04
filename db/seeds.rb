Unit.destroy_all

unit1 = Unit.new(id: 1, title: "Unit 1", price: 1375, available: true, description: "Unit 1 description")
unit2 = Unit.new(id: 2, title: "Unit 2", price: 875, available: true, description: "Unit 2 description")
unit3 = Unit.new(id: 3, title: "Unit 3", price: 1425, available: true, description: "Unit 3 description")

unit1.save
unit2.save
unit3.save

Image.destroy_all

images = [
	{unit_id: unit1.id, image_url: "1/kitchen_fridge.jpg", main: true, description: "Kitchen"},
	{unit_id: unit1.id, image_url: "1/kitchen_oven.jpg", main: false, description: "Kitchen"},
	{unit_id: unit1.id, image_url: "1/kitchen_sink.jpg", main: false, description: "Kitchen"},
	{unit_id: unit1.id, image_url: "1/office.jpg", main: false, description: "Office"},
	{unit_id: unit1.id, image_url: "1/office_2.jpg", main: false, description: "Office"},
	{unit_id: unit1.id, image_url: "1/office_3.jpg", main: false, description: "Office"},
	{unit_id: unit1.id, image_url: "1/bathroom.jpg", main: false, description: "Bathroom"},
	{unit_id: unit1.id, image_url: "1/bathroom_2.jpg", main: false, description: "Bathroom"},
	{unit_id: unit1.id, image_url: "1/front_room.jpg", main: false, description: "Front Room"},
	{unit_id: unit1.id, image_url: "1/ext_front.jpg", main: false, description: "Front"},
	{unit_id: unit1.id, image_url: "1/ext_side.jpg", main: false, description: "Side Yard"},
	{unit_id: unit1.id, image_url: "1/back_bedroom.jpg", main: false, description: "Bedroom 2"},
	{unit_id: unit1.id, image_url: "1/back_bedroom_2.jpg", main: false, description: "Bedroom 2"},
	{unit_id: unit1.id, image_url: "1/front_bedroom.jpg", main: false, description: "Bedroom 1"},
	{unit_id: unit1.id, image_url: "1/front_bedroom_2.jpg", main: false, description: "Bedroom 1"}
]

Image.create images

Space.destroy_all

spaces = [
	{title: "Garage Space 1", description: "Space in the garage.", image_url:"http://openclipart.org/image/800px/svg_to_png/45937/parking_romus_01.png", price: 120, available: true},
	{title: "Garage Space 2", description: "Space in the garage.", image_url:"http://openclipart.org/image/800px/svg_to_png/45937/parking_romus_01.png", price: 120, available: true},
	{title: "Uncovered Space 1", description: "Outside space.", image_url:"http://openclipart.org/image/800px/svg_to_png/45937/parking_romus_01.png", price: 60, available: true},
	{title: "Uncovered Space 2", description: "Outside space.", image_url:"http://openclipart.org/image/800px/svg_to_png/45937/parking_romus_01.png", price: 60, available: true}
]

Space.create spaces