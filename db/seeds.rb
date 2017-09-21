User.delete_all
User.create(email: "admin@admin.pt", admin: true, password: "123456")

DoughFilling.delete_all
Cake.delete_all
Dough.delete_all
Filling.delete_all
Decoration.delete_all
Other.delete_all


pao_de_lo = Dough.create(name: "Pão de Lô", price: 0.15 , description: "Pão de Lô é uma base amarela, fofa e húmida.")
chocolate = Dough.create(name: "Chocolate", price: 0.15 , description: "A base bolo é de Chocolate")
cenoura = Dough.create(name: "Cenoura", price: 0.15 , description: "A base bolo é de Cenoura")
red_velvet = Dough.create(name: "Redvelvet", price: 0.15 , description: "A base bolo é de Red Velvet")
noz = Dough.create(name: "Noz", price: 0.15 , description: "A base bolo é de Noz")

doce_de_ovo = Filling.create(name: "Doce de ôvo", price: 1, description: "")
chantili = Filling.create(name: "Chantili e Frutos Silvestre", price: 1, description: "")
leite_creme = Filling.create(name: "Leite Creme e Doce de Alperce", price: 1, description: "")
chocolate_frutos = Filling.create(name: "Chocolate e Frutos Silvestre", price: 1, description: "")
roche = Filling.create(name: "Roche", price: 1, description: "")
mousse_de_chocolate = Filling.create(name: "Mousse Chocolate", price: 1, description: "")
creme_de_coco = Filling.create(name: "Creme Côco e Ananas", price: 1, description: "")
doce_de_laranja = Filling.create(name: "Doce Laranja", price: 1, description: "")
branco = Filling.create(name: "Chocolate Branco e Crocante", price: 1, description: "")
queijo = Filling.create(name: "Creme de Queijo", price: 1, description: "")

Decoration.create(name: "Decoration Ex1", price: 0, description: "This is an amazing Decoration EX1")
Decoration.create(name: "Decoration Ex2", price: 0, description: "This is an amazing Decoration EX2")
Decoration.create(name: "Decoration Ex3", price: 0, description: "This is an amazing Decoration EX3")
Decoration.create(name: "Decoration Ex4", price: 0.02, description: "This is an amazing Decoration EX4")
Decoration.create(name: "Decoration Ex5", price: 0.03, description: "This is an amazing Decoration EX5")
Decoration.create(name: "Decoration Ex6", price: 0.05, description: "This is an amazing Decoration EX6")
Decoration.create(name: "Decoration Ex7", price: 0.01, description: "This is an amazing Decoration EX7")
Decoration.create(name: "Decoration Ex8", price: 0.06, description: "This is an amazing Decoration EX8")
Decoration.create(name: "Decoration Ex9", price: 0.04, description: "This is an amazing Decoration EX9")

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

Other.create(name: "Cupcake 1", price: 1, description: "This is an amazing cupcake other EX1")
Other.create(name: "Cupcake 2", price: 1, description: "This is an amazing cupcake other EX2")
Other.create(name: "Cupcake 3", price: 1, description: "This is an amazing cupcake other EX3")
Other.create(name: "Cupcake 4", price: 1, description: "This is an amazing cupcake other EX4")
Other.create(name: "Cupcake 5", price: 1, description: "This is an amazing cupcake other EX5")
Other.create(name: "Cupcake 6", price: 1, description: "This is an amazing cupcake other EX6")
Other.create(name: "Cupcake 7", price: 1, description: "This is an amazing cupcake other EX7")
Other.create(name: "Cupcake 8", price: 1, description: "This is an amazing cupcake other EX8")
Other.create(name: "Cupcake 9", price: 1, description: "This is an amazing cupcake other EX9")
