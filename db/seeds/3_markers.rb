Marker.destroy_all
puts "Creating Markers"
category1= Category.find_by(name: "iPhone")
category2= Category.find_by(name: "Huawei")
category3= Category.find_by(name: "Samsung")
##category

Marker.create!(name: "iphone 11 black",url:"https://simple.ripley.cl/iphone-11-64gb-negro-2000381280228p?color_80=negro&s=o",category_id: category1.id)

Marker.create!(name: "celular huawei p40 lite negro",url:"https://simple.ripley.cl/huawei-p40-lite-128gb-negro-2000379061037p?s=o",category_id: category2.id)

Marker.create!(name: "Smartphone Galaxy S20 FE 128GB",url:"https://www.falabella.com/falabella-cl/product/prod23158910/Smartphone-Galaxy-S20-FE-128GB/14592739",category_id: category3.id)


puts "Ending Markers"