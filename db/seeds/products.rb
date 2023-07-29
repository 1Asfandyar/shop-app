# frozen_string_literal: true

product_list = [
  {
    name: 'Dulux Quick dry Pure brilliant white Satinwood Metal & wood paint, 2.5L',
    description: "Product information
    This Pure brilliant white satinwood wood & metal paint has been specially designed to give a durable and long-lasting finish on a range of surfaces. Simply apply with a brush or roller and leave for 6 hours to dry - a great way to give the surfaces additional protection. Covers up to 16 m² per litre on average.

    Suitable for use on Metal & wood surfaces
    Instructions for Storage - Store the paint in dry conditions and protect from extreme temperatures
    Quick dry
    Features and benefits
    At B&Q we want you to be satisfied with your colour selection. Not all monitors will display colours the same and paint tins may not show the same colour as your walls do in natural light. We therefore recommend you order a tester pot online or pop in store to pick one up so you are sure that this is the right colour for you.

    We've made this paint scuff resistant so it's durable and hardwearing in the busiest of homes. The finish lasts for longer so once you've painted you don't have to worry about it needing a touch up
    Keep skirtings, doors and window frames looking neat and fresh with interior wood and metal paint which lets you easily wipe away marks
    Simply cover old marks and blemishes for a better finish
    When you've spent time painting your home, you want to keep the colour at its best for longer. That's why our paint doesn't yellow and keeps your white surfaces whiter for longer
    This paint dries quickly so you can get additional coats painted sooner. Get the job finished quicker and sit back and relax
    Legal Information
    Contains 1,2-benzisothiazol-3(2H)-one, C(M)IT/MIT(3:1) and methylisothiazolinone.May produce an allergic reaction.Warning! Hazardous respirable droplets may be formed when sprayed. Do not breathe spray or mist
    Health and safety
    Please note that this item has additional safety or regulatory datasheets available. The product may have possible health and safety hazards covered in these documents. Refer to the container for full information and always follow the instructions.",
    code: '5010212585092',
    images: Dir[Rails.root.join('db/seeds/images/*.jpg')].sort
  }
]

subcategories_list = Category.categories_without_subcategories

i = 0
subcategories_list[1...10].each do |category|
  product_list.each do |product|
    new_product = category.products.find_or_create_by(name: "#{product[:name]}-#{i}", description: product[:description],
                                                      code: "#{product[:code]}-#{i}")
    i += 1
    # product[:images].each do |image_path|
    #   file = File.open(image_path)
    #   new_product.images.attach(io: file, filename: image_path.split('/').last)
    #   file.close
    # end
  end
end
