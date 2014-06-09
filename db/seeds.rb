Unit.destroy_all

unit1 = Unit.new(id: 1, title: "Unit 1", price: 1375, available: true, description: "Unit 1 description")
unit2 = Unit.new(id: 2, title: "Unit 2", price: 875, available: true, description: "Unit 2 description")
unit3 = Unit.new(id: 3, title: "Unit 3", price: 1425, available: true, description: "Unit 3 description")

unit1.save
unit2.save
unit3.save

cf_domain = "http:\\\\dd8rbkyzi7hp7.cloudfront.net/"

Image.destroy_all

images = [	{unit_id: unit1.id, image_url: cf_domain + "1_Kitchen_Fridge.jpg", main: true, description: "Kitchen"},
			{unit_id: unit1.id, image_url: cf_domain + "1_Kitchen_oven.jpg", main: false, description: "Kitchen"},
			{unit_id: unit1.id, image_url: cf_domain + "1_Kitchen_sink.jpg", main: false, description: "Kitchen"},
			{unit_id: unit1.id, image_url: cf_domain + "1_office.jpg", main: false, description: "Office"},
			{unit_id: unit1.id, image_url: cf_domain + "1_office_2.jpg", main: false, description: "Office"},
			{unit_id: unit1.id, image_url: cf_domain + "1_office_3.jpg", main: false, description: "Office"},
			{unit_id: unit1.id, image_url: cf_domain + "1_bathroom.jpg", main: false, description: "Bathroom"},
			{unit_id: unit1.id, image_url: cf_domain + "1_bathroom_2.jpg", main: false, description: "Bathroom"},
			{unit_id: unit1.id, image_url: cf_domain + "1_Front_room.jpg", main: false, description: "Front Room"},
			{unit_id: unit1.id, image_url: cf_domain + "1_ext_front.jpg", main: false, description: "Front"},
			{unit_id: unit1.id, image_url: cf_domain + "1_ext_side.jpg", main: false, description: "Side Yard"},
			{unit_id: unit1.id, image_url: cf_domain + "1_back_bedroom.jpg", main: false, description: "Bedroom 2"},
			{unit_id: unit1.id, image_url: cf_domain + "1_back_bedroom_2.jpg", main: false, description: "Bedroom 2"},
			{unit_id: unit1.id, image_url: cf_domain + "1_Front_bedroom.jpg", main: false, description: "Bedroom 1"},
			{unit_id: unit1.id, image_url: cf_domain + "1_front_bedroom_2.jpg", main: false, description: "Bedroom 1"} 	
		]

Image.create images