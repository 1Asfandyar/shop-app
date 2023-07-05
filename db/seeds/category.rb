# frozen_string_literal: true

categories_name_list = {
  'Garden & Landscaping': {
    'Outdoor living': {},
    'Growing & planting': {},
    'Garden tools': {},
    'Décor, games & wildlife': {},
    'Garden buildings & storage': {},
    'Landscaping': {},
  },
  'Painting & Decorating': {
    'Exterior paint': {},
    'Interior paint': {},
    'Woodcare': {},
    'Popular paint brands': {},
    'Decorating tools & supplies': {},
    'Wallpaper & wall coverings': {}
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
