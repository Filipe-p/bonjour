# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create(email: "admin@admin.pt", admin: true, password: "123456")

Cake.delete_all
Dough.delete_all
Filling.delete_all
Decoration.delete_all
Other.delete_all

# // MAIN CAKE COMPONENTS (DOUGH + FILLINGS + DECORATION) //

pao_de_lo = Dough.create(name: "Pão de Lô", price: 1 , description: "Pão de Lô é uma base amarela, fofa e húmida.")
chocolate = Dough.create(name: "Chocolate", price: 1 , description: "A base bolo é de Chocolate")
cenoura = Dough.create(name: "Cenoura", price: 1 , description: "A base bolo é de Cenoura")
red_velvet = Dough.create(name: "Redvelvet", price: 1 , description: "A base bolo é de Red Velvet")
noz = Dough.create(name: "Noz", price: 1 , description: "A base bolo é de Noz")


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

Decoration.create([{name: "Decoration Ex1", price: 1, description: "This is an amazing Decoration EX1"},
  {name: "Decoration Ex2", price: 1, description: "This is an amazing Decoration EX2"},
  {name: "Decoration Ex3", price: 1, description: "This is an amazing Decoration EX3"},
  {name: "Decoration Ex4", price: 1, description: "This is an amazing Decoration EX4"},
  {name: "Decoration Ex5", price: 1, description: "This is an amazing Decoration EX5"},
  {name: "Decoration Ex6", price: 1, description: "This is an amazing Decoration EX6"},
  {name: "Decoration Ex7", price: 1, description: "This is an amazing Decoration EX7"},
  {name: "Decoration Ex8", price: 1, description: "This is an amazing Decoration EX8"},
  {name: "Decoration Ex9", price: 1, description: "This is an amazing Decoration EX9"},
  {name: "Decoration Ex10", price: 1, description: "This is an amazing Decoration EX10"}])

doughs = {}
doughs[:pao_de_lo] = pao_de_lo
doughs[:chocolate] = chocolate
doughs[:cenoura] = cenoura
doughs[:red_velvet] = red_velvet
doughs[:noz] = noz

dough_array = [pao_de_lo, chocolate, cenoura, red_velvet, noz]

fillings = {}
fillings[:pao_de_lo] = [doce_de_ovo, chantili, leite_creme]
fillings[:chocolate] = [chantili,chocolate_frutos, roche, mousse_de_chocolate]
fillings[:cenoura] = [creme_de_coco, doce_de_laranja, branco]
fillings[:red_velvet] = [branco, queijo]
fillings[:noz] = [doce_de_ovo, chantili, leite_creme]

Decoration.all.each do |decoration|
  Dough.all.each do |dough|
    dough_array.each do |element|
      fillings[doughs.key(element)].each do |filling|
        Cake.create(name: "Bolo de #{dough.name}", dough: dough, filling: filling, price: 15)
      end
    end
  end
end

Other.create(name: "cupcake other Ex1", price: 1, description: "This is an amazing cupcake other EX1")
Other.create(name: "cupcake other Ex2", price: 1, description: "This is an amazing cupcake other EX2")
Other.create(name: "cupcake other Ex3", price: 1, description: "This is an amazing cupcake other EX3")
Other.create(name: "cupcake other Ex4", price: 1, description: "This is an amazing cupcake other EX4")
Other.create(name: "cupcake other Ex5", price: 1, description: "This is an amazing cupcake other EX5")
Other.create(name: "cupcake other Ex6", price: 1, description: "This is an amazing cupcake other EX6")
Other.create(name: "cupcake other Ex7", price: 1, description: "This is an amazing cupcake other EX7")
Other.create(name: "cupcake other Ex8", price: 1, description: "This is an amazing cupcake other EX8")
Other.create(name: "cupcake other Ex9", price: 1, description: "This is an amazing cupcake other EX9")
Other.create(name: "cupcake other Ex10", price: 1, description: "This is an amazing cupcake other EX10")
