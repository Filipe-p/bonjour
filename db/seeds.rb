DoughFilling.destroy_all
Dough.destroy_all
Filling.destroy_all

Cake.destroy_all

DecorationCategory.destroy_all
Decoration.destroy_all
Category.destroy_all

FeaturedCake.destroy_all

Delivery.destroy_all

OrderOther.destroy_all
Other.destroy_all
Order.destroy_all

User.destroy_all
User.create(email: "admin@admin.pt", admin: true, password: "123456")



pao_de_lo = Dough.create(name: "Pão de Lô", price: 15 , description: "Pão de Lô é uma base amarela, fofa e húmida.", remote_photo_url: 'http://img.taste.com.au/BcemwIdD/taste/2016/11/chocolate-celebration-cake-85607-1.jpeg'
)
chocolate = Dough.create(name: "Chocolate", price: 15 , description: "A base bolo é de Chocolate", remote_photo_url: 'http://img.taste.com.au/BcemwIdD/taste/2016/11/chocolate-celebration-cake-85607-1.jpeg'
)
cenoura = Dough.create(name: "Cenoura", price: 15 , description: "A base bolo é de Cenoura", remote_photo_url: 'http://img.taste.com.au/BcemwIdD/taste/2016/11/chocolate-celebration-cake-85607-1.jpeg'
)
red_velvet = Dough.create(name: "Redvelvet", price: 15 , description: "A base bolo é de Red Velvet", remote_photo_url: 'http://img.taste.com.au/BcemwIdD/taste/2016/11/chocolate-celebration-cake-85607-1.jpeg'
)
noz = Dough.create(name: "Noz", price: 15 , description: "A base bolo é de Noz", remote_photo_url: 'http://img.taste.com.au/BcemwIdD/taste/2016/11/chocolate-celebration-cake-85607-1.jpeg'
)

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

decoration_one = Decoration.create(name: "Decoration Ex1", minimum_size: 1, price: 0, description: "This is an amazing Decoration EX1", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")
decoration_two = Decoration.create(name: "Decoration Ex2", minimum_size: 2, price: 0, description: "This is an amazing Decoration EX2", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")
decoration_three = Decoration.create(name: "Decoration Ex3", minimum_size: 3, price: 0, description: "This is an amazing Decoration EX3", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")
Decoration.create(name: "Decoration Ex4", minimum_size: 1.5, price: 2, description: "This is an amazing Decoration EX4", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")
Decoration.create(name: "Decoration Ex5", minimum_size: 2.5, price: 3, description: "This is an amazing Decoration EX5", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")
Decoration.create(name: "Decoration Ex6", minimum_size: 2.7, price: 5, description: "This is an amazing Decoration EX6", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")
Decoration.create(name: "Decoration Ex7", minimum_size: 2, price: 1, description: "This is an amazing Decoration EX7", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")
Decoration.create(name: "Decoration Ex8", minimum_size: 2, price: 6, description: "This is an amazing Decoration EX8", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")
Decoration.create(name: "Decoration Ex9", minimum_size: 2, price: 4, description: "This is an amazing Decoration EX9", remote_photo_url: "https://www.cheesecake.com.au/media/catalog/product/cache/1/small_image/9df78eab33525d08d6e5fb8d27136e95/_/2/_2226_20Web_568_Torte_LetsCelebrateBlueTorte.png")

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

Other.create(name: "Cupcake 1", price: 2, description: "This is an amazing cupcake other EX1", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')
Other.create(name: "Cupcake 2", price: 1, description: "This is an amazing cupcake other EX2", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')
Other.create(name: "Cupcake 3", price: 2, description: "This is an amazing cupcake other EX3", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')
Other.create(name: "Cupcake 4", price: 1, description: "This is an amazing cupcake other EX4", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')
Other.create(name: "Cupcake 5", price: 2, description: "This is an amazing cupcake other EX5", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')
Other.create(name: "Cupcake 6", price: 1, description: "This is an amazing cupcake other EX6", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')
Other.create(name: "Cupcake 7", price: 2, description: "This is an amazing cupcake other EX7", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')
Other.create(name: "Cupcake 8", price: 1, description: "This is an amazing cupcake other EX8", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')
Other.create(name: "Cupcake 9", price: 4, description: "This is an amazing cupcake other EX9", remote_photo_url: 'https://www.howtocookthat.net/public_html/wp-content/uploads/2012/06/IMG_6728-1024x764.jpg?x19907')

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
