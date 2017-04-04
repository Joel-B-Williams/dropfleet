# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

factions = ["UCM", "Scourge", "PHR", "Shaltari"]

factions.each do |faction|
	Faction.create(name: faction)
end

battlegroup_types = {
									'Flag' 				=> 2,
									'Vanguard'		=> 3,
									'Line'				=> 3,
									'Pathfinder' 	=> 3
									}

battlegroup_types.each do |name, group_limit|
	BattlegroupType.create(name: name, group_limit: group_limit)
end

tonnages = ['L', 'M', 'H', 'S']

tonnages.each do |ton|
	Tonnage.create(tonnage: ton)
end

ucm_ships = [
{ name: 'Beijing',
scan: '8"',
signature: '12"',
thrust: '6"',
hull: '18',
armor: '3+',
point_defense: '10',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 4,
faction_id: 1,
cost:155 },
{ name: 'New York',
scan: '8"',
signature: '12"',
thrust: '6"',
hull: '18',
armor: '3+',
point_defense: '10',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 4,
faction_id: 1,
cost: 260 },
{ name: 'Tokyo',
scan: '8"',
signature: '12"',
thrust: '6"',
hull: '18',
armor: '3+',
point_defense: '10',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 4,
faction_id: 1,
cost: 220 },
{ name: 'Atlantis',
scan: '6"',
signature: '6"',
thrust: '8"',
hull: '14',
armor: '3+',
point_defense: '7',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 3,
faction_id: 1,
cost: 205 },
{ name: 'Avalon',
scan: '6"',
signature: '6"',
thrust: '8"',
hull: '14',
armor: '3+',
point_defense: '7',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 3,
faction_id: 1,
cost: 195 },
{ name: 'Moscow',
scan: '6"',
signature: '6"',
thrust: '7"',
hull: '12',
armor: '3+',
point_defense: '5',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 3,
faction_id: 1,
cost: 163 },
{ name: 'St. Petersburg',
scan: '6"',
signature: '6"',
thrust: '7"',
hull: '12',
armor: '3+',
point_defense: '5',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 3,
faction_id: 1,
cost: 155 },
{ name: 'Rio',
scan: '6"',
signature: '6"',
thrust: '8"',
hull: '10',
armor: '3+',
point_defense: '5',
min_group_size: 1,
max_group_size: 2,
tonnage_id: 2,
faction_id: 1,
cost: 105 },
{ name: 'Berlin',
scan: '6"',
signature: '6"',
thrust: '8"',
hull: '10',
armor: '3+',
point_defense: '5',
min_group_size: 1,
max_group_size: 2,
tonnage_id: 2,
faction_id: 1,
cost: 105 },
{ name: 'Madrid',
scan: '6"',
signature: '6"',
thrust: '8"',
hull: '10',
armor: '3+',
point_defense: '5',
min_group_size: 1,
max_group_size: 2,
tonnage_id: 2,
faction_id: 1,
cost: 79 },
{ name: 'Seattle',
scan: '6"',
signature: '6"',
thrust: '8"',
hull: '10',
armor: '3+',
point_defense: '5',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 2,
faction_id: 1,
cost: 132 },
{ name: 'Osaka',
scan: '6"',
signature: '6"',
thrust: '10"',
hull: '8',
armor: '4+',
point_defense: '5',
min_group_size: 2,
max_group_size: 3,
tonnage_id: 2,
faction_id: 1,
cost: 86 },
{ name: 'New Cairo',
scan: '6"',
signature: '6"',
thrust: '10"',
hull: '8',
armor: '4+',
point_defense: '5',
min_group_size: 2,
max_group_size: 3,
tonnage_id: 2,
faction_id: 1,
cost: 88 },
{ name: 'San Francisco',
scan: '6"',
signature: '6"',
thrust: '8"',
hull: '10',
armor: '3+',
point_defense: '5',
min_group_size: 1,
max_group_size: 1,
tonnage_id: 2,
faction_id: 1,
cost: 111 },
{ name: 'Toulon',
scan: '6"',
signature: '3"',
thrust: '10"',
hull: '4',
armor: '4+',
point_defense: '3',
min_group_size: 2,
max_group_size: 4,
tonnage_id: 1,
faction_id: 1,
cost: 35 },
{ name: 'Taipei',
scan: '6"',
signature: '3"',
thrust: '10"',
hull: '4',
armor: '4+',
point_defense: '3',
min_group_size: 2,
max_group_size: 6,
tonnage_id: 1,
faction_id: 1,
cost: 39 },
{ name: 'Jakarta',
scan: '6"',
signature: '3"',
thrust: '10"',
hull: '4',
armor: '4+',
point_defense: '3',
min_group_size: 1,
max_group_size: 4,
tonnage_id: 1,
faction_id: 1,
cost: 32 },
{ name: 'Lima',
scan: '6"',
signature: '3"',
thrust: '10"',
hull: '4',
armor: '4+',
point_defense: '3',
min_group_size: 1,
max_group_size: 2,
tonnage_id: 1,
faction_id: 1,
cost: 37 },
{ name: 'New Orleans',
scan: '6"',
signature: '3"',
thrust: '10"',
hull: '4',
armor: '4+',
point_defense: '3',
min_group_size: 1,
max_group_size: 2,
tonnage_id: 1,
faction_id: 1,
cost: 32 },
{ name: 'Santiago',
scan: '6"',
signature: '2"',
thrust: '14"',
hull: '2',
armor: '5+',
point_defense: '2',
min_group_size: 1,
max_group_size: 3,
tonnage_id: 1,
faction_id: 1,
cost: 22 }
] 

ucm_ships.each do |ship|
	Ship.create(ship)
end