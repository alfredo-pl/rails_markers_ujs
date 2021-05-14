Category.destroy_all
puts "Creating Categories"
Category.create!(name: "Celulares", public: true, type_id: 1)
category_1 = Category.find_by(name: "Celulares")

Category.create!(name: "Samsung", public: true, category_id: category_1.id, type_id: 1)
 
Category.create!(name: "iPhone", public: true, category_id: category_1.id, type_id: 1)
Category.create!(name: "Huawei", public: true, category_id: category_1.id, type_id: 1)


Category.create!(name: "Televisión", public: true, type_id: 1)
category_2 = Category.find_by(name: "Televisión")
##Subcategory television
Category.create!(name: "Smart Tv", public: true, category_id: category_2.id, type_id: 1)
Category.create!(name: "Ultra HD 4k", public: true, category_id: category_2.id, type_id: 1)
Category.create!(name: "Premium Tv", public: true, category_id: category_2.id, type_id: 1)

Category.create!(name: "Audio y Música", public: true, type_id: 1)
category_3 = Category.find_by(name: "Audio y Música")
##Subcategory television
Category.create!(name: "Parlantes Bluetooh", public: true, category_id: category_3.id, type_id: 1)
Category.create!(name: "Audifonos", public: true, category_id: category_3.id, type_id: 1)
Category.create!(name: "Soundbar", public: true, category_id: category_3.id, type_id: 1)

Category.create!(name: "Computadoras", public: true, type_id: 1)
category_4 = Category.find_by(name: "Computadoras")
##Subcategory television
Category.create!(name: "Notebooks", public: true, category_id: category_4.id, type_id: 1)
Category.create!(name: "Pc / All in one", public: true, category_id: category_4.id, type_id: 1)
Category.create!(name: "Tablets", public: true, category_id: category_4.id, type_id: 1)

type2= Type.find_by(name: "Deportes")
Category.create!(name: "Fitness", public: true, type_id: 2)
category_6 = Category.find_by(name: "Fitness")
##Subcategory television
Category.create!(name: "Pesas", public: true, category_id: category_6.id, type_id: 2)
Category.create!(name: "Spinning", public: true, category_id: category_6.id, type_id: 2)

Category.create!(name: "Actividades", public: true, type_id: 2)
category_7 = Category.find_by(name: "Actividades")
##Subcategory television
Category.create!(name: "Futbol", public: true, category_id: category_7.id, type_id: 2)
Category.create!(name: "Natacion", public: true, category_id: category_7.id, type_id: 2)

##

type3= Type.find_by(name: "Zapatos")
Category.create!(name: "Zapatos hombre", public: true, type_id: 3)
category_8 = Category.find_by(name: "Zapatos hombre")
##Subcategory television
Category.create!(name: "Zapatillas urbanas", public: true, category_id: category_8.id, type_id: 3)
Category.create!(name: "Zapatos de vestir", public: true, category_id: category_8.id, type_id: 3)

Category.create!(name: "Marcas", public: true, type_id: 3)
category_9 = Category.find_by(name: "Marcas")
##Subcategory television
Category.create!(name: "Nike", public: true, category_id: category_9.id, type_id: 3)
Category.create!(name: "Addidas", public: true, category_id: category_9.id, type_id: 3)

##
type4= Type.find_by(name: "Gamer")
Category.create!(name: "Esport", public: false, type_id: 4)
category_5 = Category.find_by(name: "Esport")
##Subcategory television
Category.create!(name: "Game", public: true, category_id: category_5.id, type_id: 4)
Category.create!(name: "League", public: true, category_id: category_5.id, type_id: 4)

Category.create!(name: "Productos", public: false, type_id: 4)
category_10 = Category.find_by(name: "Productos")
##Subcategory television
Category.create!(name: "Teclado", public: true, category_id: category_10.id, type_id: 4)
Category.create!(name: "Mouse", public: true, category_id: category_10.id, type_id: 4)

puts "Ending Categories"