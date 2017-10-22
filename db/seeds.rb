DoughFilling.delete_all
Dough.delete_all
Filling.delete_all

Cake.delete_all

DecorationCategory.delete_all
Decoration.delete_all
Category.delete_all

FeaturedCake.delete_all

Delivery.delete_all

OrderOther.delete_all
Other.delete_all
Order.delete_all

User.delete_all
User.create(email: "admin@admin.pt", admin: true, password: "123456")



pao_de_lo = Dough.create(name: "Pão de Lô", price: 15 , description: "Pão de Lô é uma base amarela, fofa e húmida.")
chocolate = Dough.create(name: "Chocolate", price: 15 , description: "A base bolo é de Chocolate")
cenoura = Dough.create(name: "Cenoura", price: 15 , description: "A base bolo é de Cenoura")
red_velvet = Dough.create(name: "Redvelvet", price: 15 , description: "A base bolo é de Red Velvet")
noz = Dough.create(name: "Noz", price: 15 , description: "A base bolo é de Noz")

doce_de_ovo = Filling.create(name: "Doce de ôvo", description: "")
chantili = Filling.create(name: "Chantili e Frutos Silvestre", description: "")
leite_creme = Filling.create(name: "Leite Creme e Doce de Alperce", description: "")
chocolate_frutos = Filling.create(name: "Chocolate e Frutos Silvestre", description: "")
roche = Filling.create(name: "Roche", description: "")
mousse_de_chocolate = Filling.create(name: "Mousse Chocolate", description: "")
creme_de_coco = Filling.create(name: "Creme Côco e Ananas", description: "")
doce_de_laranja = Filling.create(name: "Doce Laranja", description: "")
branco = Filling.create(name: "Chocolate Branco e Crocante", description: "")
queijo = Filling.create(name: "Creme de Queijo", description: "")

decoration_one = Decoration.create(name: "Decoration Ex1", minimum_size: 1, price: 0, description: "This is an amazing Decoration EX1")
decoration_two = Decoration.create(name: "Decoration Ex2", minimum_size: 2, price: 0, description: "This is an amazing Decoration EX2")
decoration_three = Decoration.create(name: "Decoration Ex3", minimum_size: 3, price: 0, description: "This is an amazing Decoration EX3")
Decoration.create(name: "Decoration Ex4", minimum_size: 1.5, price: 2, description: "This is an amazing Decoration EX4")
Decoration.create(name: "Decoration Ex5", minimum_size: 2.5, price: 3, description: "This is an amazing Decoration EX5")
Decoration.create(name: "Decoration Ex6", minimum_size: 2.7, price: 5, description: "This is an amazing Decoration EX6")
Decoration.create(name: "Decoration Ex7", minimum_size: 2, price: 1, description: "This is an amazing Decoration EX7")
Decoration.create(name: "Decoration Ex8", minimum_size: 2, price: 6, description: "This is an amazing Decoration EX8")
Decoration.create(name: "Decoration Ex9", minimum_size: 2, price: 4, description: "This is an amazing Decoration EX9")

doughs = {}
doughs[:pao_de_lo] = pao_de_lo
doughs[:chocolate] = chocolate
doughs[:cenoura] = cenoura
doughs[:red_velvet] = red_velvet
doughs[:noz] = noz

dough_array = [pao_de_lo, chocolate, cenoura, red_velvet, noz]

fillings = {}
fillings[:pao_de_lo] = [doce_de_ovo, chantili, leite_creme]
fillings[:chocolate] = [chantili, chocolate_frutos, roche, mousse_de_chocolate]
fillings[:cenoura] = [creme_de_coco, doce_de_laranja, branco]
fillings[:red_velvet] = [branco, queijo]
fillings[:noz] = [doce_de_ovo, chantili, leite_creme]

    Dough.all.each do |dough|
        if dough == pao_de_lo
          fillings[:pao_de_lo].each do |filling|
            DoughFilling.create(dough: dough, filling: filling)
          end
        end

        if dough == chocolate
          fillings[:chocolate].each do |filling|
            DoughFilling.create(dough: dough, filling: filling)
          end
        end

        if dough == cenoura
          fillings[:cenoura].each do |filling|
            DoughFilling.create(dough: dough, filling: filling)
          end
        end

        if dough == red_velvet
          fillings[:red_velvet].each do |filling|
            DoughFilling.create(dough: dough, filling: filling)
          end
        end

        if dough == noz
          fillings[:noz].each do |filling|
            DoughFilling.create(dough: dough, filling: filling)
          end
        end
    end

Other.create(name: "Cupcake 1", price: 2, description: "This is an amazing cupcake other EX1")
Other.create(name: "Cupcake 2", price: 1, description: "This is an amazing cupcake other EX2")
Other.create(name: "Cupcake 3", price: 2, description: "This is an amazing cupcake other EX3")
Other.create(name: "Cupcake 4", price: 1, description: "This is an amazing cupcake other EX4")
Other.create(name: "Cupcake 5", price: 2, description: "This is an amazing cupcake other EX5")
Other.create(name: "Cupcake 6", price: 1, description: "This is an amazing cupcake other EX6")
Other.create(name: "Cupcake 7", price: 2, description: "This is an amazing cupcake other EX7")
Other.create(name: "Cupcake 8", price: 1, description: "This is an amazing cupcake other EX8")
Other.create(name: "Cupcake 9", price: 4, description: "This is an amazing cupcake other EX9")

FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")
FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")
FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")
FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")
FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")
FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")
FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")
FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")
FeaturedCake.create(name: "Cake one", remote_photo_url: "http://kitchenfunwithmy3sons.com/wp-content/uploads/2016/04/The-Most-Awesome-Cake-Ideas-Birthday-Party-Wedding-Baby-Shower-Anniversary-Kids-Adults-45.jpg")

category_one = Category.create(name: 'Category 1', description: 'Sample category 1')
category_two = Category.create(name: 'Category 2', description: 'Sample category 2')
category_three = Category.create(name: 'Category 3', description: 'Sample category 3')

DecorationCategory.create(decoration: decoration_one, category: category_one)
DecorationCategory.create(decoration: decoration_two, category: category_two)
DecorationCategory.create(decoration: decoration_three, category: category_three)
