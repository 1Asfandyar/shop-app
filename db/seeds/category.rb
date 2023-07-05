# frozen_string_literal: true

categories_name_list = {
  'Garden & Landscaping': {
    'Outdoor living': {
      'Garden furniture': {},
      'BBQs & BBQ tools': {},
      'Gazebos': {},
      'Chimineas & fire pits': {},
      'Parasols & bases': {},
      'Sunloungers': {},
      'Garden bars': {},
      'Hot tubs & saunas': {},
      'Pizza ovens': {},
      'Garden furniture covers': {},
      'Hammocks': {},
      'Pools & accessories': {}
    },
    'Growing & planting': {
      'Plants, seeds & bulbs': {},
      'Pots, planters & baskets': {},
      'Compost, manure & soil': {},
      'Hoses, pumps & irrigation': {},
      'Lawn care': {},
      'Fertilisers & plant food': {},
      'Plant protection & support': {},
      'Plant trays': {},
      'Propagators': {},
      'Weed killers': {},
      'Pest control': {},
      'Garden cloches': {}
    },
    'Garden tools': {
      'Lawnmowers': {},
      'Garden power tools': {},
      'Garden hand tools': {},
      'Pressure washers': {},
      'Wheelbarrows & trolleys': {},
      'Shovels & spades': {},
      'Watering cans': {},
      'Composters': {},
      'Garden waste bags & sacks': {},
      'Incinerators': {},
      'Garden kneelers': {},
      'Gardening gloves': {}
    },
    'Décor, games & wildlife': {
      'Garden ornaments': {},
      'Garden lighting': {},
      'Outdoor play': {},
      'Animal care': {},
      'Garden swings': {},
      'Water features & fountains': {},
      'Playhouses': {},
      'Sandpits & play sand': {},
      'Paddling pools': {},
      'Camping & tents': {},
      'Trampolines': {},
      'Sport & Leisure': {},
    },
    'Garden buildings & storage': {
      'Sheds': {},
      'Garden storage boxes': {},
      'Greenhouses & growhouses': {},
      'Pergolas': {},
      'Summerhouses': {},
      'Log cabins & garden offices': {},
      'Arches': {},
      'Shed bases': {},
      'Arbours': {},
      'Awnings': {},
      'Workshops': {},
      'Outdoor kitchens': {}
    },
    'Landscaping': {
      'Fencing': {},
      'Paving & walling': {},
      'Decorative stones': {},
      'Decking': {},
      'Trellis & screening': {},
      'Lawn edging': {},
      'Timber sleepers': {},
      'Garden gates': {},
      'Ponds & water features': {},
      'Lawn turf': {},
      'Artificial grass': {},
      'Garden railings': {},
    },
  },
  'Painting & Decorating': {
    'Exterior paint': {
      'Metal & wood paint': {},
      'Fence & shed paint': {},
      'Masonry paint': {},
      'Paint mixing': {},
      'Door paint': {},
      'Decking paint': {},
    },
    'Interior paint': {
      'Emulsion paint': {},
      'Metal & wood paint': {},
      'Paint mixing': {},
      'Furniture paint': {},
      'Primers & undercoats': {},
      'Damp & anti-mould paint': {},
      'Tile paint': {},
      'Radiator paint': {},
      'Spray paint': {},
      'Floor paint': {},
      'Chalkboard paint': {},
      'Paint samples': {},
    },
    'Woodcare': {
      'Wood stain': {},
      'Wood varnish': {},
      'Wood preservatives': {},
      'Wood oil': {},
      'Wood wax': {},
      'Exterior woodcare': {},
      'Interior woodcare': {},
    },
    'Popular paint brands': {
      'Dulux': {},
      'Valspar paint mixing': {},
      'Farrow & Ball': {},
      'GoodHome': {},
      'Laura Ashley': {},
      'Leyland Trade': {},
      'Rust-Oleum': {},
      'Sandtex': {},
      'Ronseal': {},
      'Cuprinol': {},
      'Hammerite': {},
      'V33': {},
    },
    'Decorating tools & supplies': {
      'Paint rollers': {},
      'Paint brushes': {},
      'Paint trays': {},
      'Paint pads': {},
      'Paint sprayers': {},
      'Dust sheets': {},
      'Fillers': {},
      'Tapes': {},
      'Sandpaper': {},
      'Glues & adhesives': {},
      'Sealants': {},
      'Paint stripper': {},
    },
    'Wallpaper & wall coverings': {
      'Wallpaper': {},
      'Murals': {},
      'Wall stickers': {},
      'Sticky back plastic & window film': {},
      'Decorative wall panels': {},
      'Blue wallpaper': {},
      'Grey wallpaper': {},
      'Wallpaper tools': {},
      'Lining paper': {},
    }
  },
  'Home & Furniture': {
    'Furniture': {},
    'Home furnishings': {},
    'Home accessories': {},
    'Storage & shelving': {},
    'Laundry & utility': {},
    'Cooking & dining': {}
  },
  'Kitchen & Appliances': {
    'Fitted kitchens': {},
    'Kitchen cabinets & doors': {},
    'Kitchen worktops': {},
    'Kitchen taps': {},
    'Kitchen sinks': {},
    'Kitchen appliances': {},
  },
  'Bathroom & Showers': {
    'Bathroom furniture': {},
    'Showering': {},
    'Toilets': {},
    'Baths': {},
    'Basins': {},
    'Bathroom taps': {}
  },
  'Building & Hardware': {
    'Building supplies': {},
    'Timber & joinery': {},
    'Hardware': {},
    'Doors & windows': {}
  },
  'Tiling & Flooring': {
    'Flooring': {},
    'Tiles': {},
    'Flooring tools': {},
    'Tiling tools': {}
  },
  'Lighting & Electrical': {
    'Indoor lights': {},
    'Outdoor lights': {},
    'LED lights': {},
    'Electrical': {},
    'Home security & safety': {},
    'Smart home': {}
  },
  'Tools & Equipment': {
    'Power tools': {},
    'Power tool accessories': {},
    'Hand tools': {},
    'Safety & workwear': {},
    'Equipment': {}
  },
  'Heating & Plumbing': {
    'Radiators': {},
    'Fires, stoves & heaters': {},
    'Plumbing': {},
    'Central heating': {},
    'Air treatment': {},
  },
  'Clearance & Latest offers': {
    'Home & garden clearance': {},
    'DIY & building clearance': {},
    'See our latest offers': {}
  }
}

def create_categories(categories, parent = nil)
  categories.each do |name, subcategories|
    category = Category.find_or_create_by(name: name, parent: parent)
    create_categories(subcategories, category) if subcategories.present?
  end
end

create_categories(categories_name_list)
