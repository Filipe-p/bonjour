# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# // MAIN CAKE COMPONENTS (DOUGH + FILLINGS + DECORATION) //

doughs = Dough.create([
  {name: "Pão de Lô", price: 1 , description: "Pão de Lô é uma base amarela, fofa e húmida."},
  {name: "Chocolate", price: 1 , description: "A base bolo é de Chocolate"},
  {name: "Cenoura", price: 1 , description: "A base bolo é de Cenoura"},
  {name: "Redvelvet", price: 1 , description: "A base bolo é de Redvelvet"},
  {name: "Nos", price: 1 , description: "A base bolo é de Nós"}
  ])


fillings = Filling.create([{name: "Doce de ôvo", price: 1, description: ""},
  {name: "Chantili e Frutos Silvestre", price: 1, description: ""},
  {name: "Leite Creme e Doce de Alperce", price: 1, description: ""},
  {name: "Chocolate e Frutos Silvestre", price: 1, description: ""},
  {name: "Roche", price: 1, description: ""},
  {name: "Mousse Chocolate", price: 1, description: ""},
  {name: "Creme Côco e Ananas", price: 1, description: ""},
  {name: "Doce Laranja", price: 1, description: ""},
  {name: "Chocolate Branco e Crocante", price: 1, description: ""},
  {name: "Creme de Queijo", price: 1, description: ""}])


decorations = Decoration.create([{name: "Decoration Ex1", price: 1, description: "This is an amazing Decoration EX1"},
  {name: "Decoration Ex2", price: 1, description: "This is an amazing Decoration EX2"},
  {name: "Decoration Ex3", price: 1, description: "This is an amazing Decoration EX3"},
  {name: "Decoration Ex4", price: 1, description: "This is an amazing Decoration EX4"},
  {name: "Decoration Ex5", price: 1, description: "This is an amazing Decoration EX5"},
  {name: "Decoration Ex6", price: 1, description: "This is an amazing Decoration EX6"},
  {name: "Decoration Ex7", price: 1, description: "This is an amazing Decoration EX7"},
  {name: "Decoration Ex8", price: 1, description: "This is an amazing Decoration EX8"},
  {name: "Decoration Ex9", price: 1, description: "This is an amazing Decoration EX9"},
  {name: "Decoration Ex10", price: 1, description: "This is an amazing Decoration EX10"}])


# // CREATING CAKE OBJECTS = (DOUGH + FILLINGS + DECORATION) + CAKE PARAMS //
# // creating SQUARE medium, large and extra large cakes //
cakes_square_medium =
  doughs.each do |dough|
    fillings.each do |filling|
      decorations.each do |decoration|
        Cake.create([{name: "Bolo de #{dough.name} com #{filling.name} - #{decoration.name}",
          price: 15,
          description: "Isto é um bolo de #{dough.name} com #{filling.name}, acabado com uma linda #{decoration.name}",
          shape: "square",
          message: "",
          size: "medium",
          dough_id: dough.id,
          filling_id: filling.id,
          decoration_id: decoration.id}])
      end
    end
  end


cakes_square_large =
  doughs.each do |dough|
    fillings.each do |filling|
      decorations.each do |decoration|
        Cake.create([{name: "Bolo de #{dough.name} com #{filling.name} - #{decoration.name}",
          price: 15,
          description: "Isto é um bolo de #{dough.name} com #{filling.name}, acabado com uma linda #{decoration.name}",
          shape: "square",
          message: "",
          size: "large",
          dough_id: dough.id,
          filling_id: filling.id,
          decoration_id: decoration.id}])
      end
    end
  end

cakes_square_extra_large =
  doughs.each do |dough|
    fillings.each do |filling|
      decorations.each do |decoration|
        Cake.create([{name: "Bolo de #{dough.name} com #{filling.name} - #{decoration.name}",
          price: 15,
          description: "Isto é um bolo de #{dough.name} com #{filling.name}, acabado com uma linda #{decoration.name}",
          shape: "square",
          message: "",
          size: "extra large",
          dough_id: dough.id,
          filling_id: filling.id,
          decoration_id: decoration.id}])
      end
    end
  end


##
# // creating ROUND medium, large and extra large cakes //

cakes_round_medium =
  doughs.each do |dough|
    fillings.each do |filling|
      decorations.each do |decoration|
        Cake.create([{name: "Bolo de #{dough.name} com #{filling.name} - #{decoration.name}",
          price: 15,
          description: "Isto é um bolo de #{dough.name} com #{filling.name}, acabado com uma linda #{decoration.name}",
          shape: "round",
          message: "",
          size: "medium",
          dough_id: dough.id,
          filling_id: filling.id,
          decoration_id: decoration.id}])
      end
    end
  end


cakes_round_large =
  doughs.each do |dough|
    fillings.each do |filling|
      decorations.each do |decoration|
        Cake.create([{name: "Bolo de #{dough.name} com #{filling.name} - #{decoration.name}",
          price: 15,
          description: "Isto é um bolo de #{dough.name} com #{filling.name}, acabado com uma linda #{decoration.name}",
          shape: "round",
          message: "",
          size: "large",
          dough_id: dough.id,
          filling_id: filling.id,
          decoration_id: decoration.id}])
      end
    end
  end


cakes_round_extra_large =
  doughs.each do |dough|
    fillings.each do |filling|
      decorations.each do |decoration|
        Cake.create([{name: "Bolo de #{dough.name} com #{filling.name} - #{decoration.name}",
          price: 15,
          description: "Isto é um bolo de #{dough.name} com #{filling.name}, acabado com uma linda #{decoration.name}",
          shape: "round",
          message: "",
          size: "extra large",
          dough_id: dough.id,
          filling_id: filling.id,
          decoration_id: decoration.id}])
      end
    end
  end



# // EXTRAS //

extras = Extra.create([{name: "cupcake extra Ex1", price: 1, description: "This is an amazing cupcake extra EX1"},
  {name: "cupcake extra Ex2", price: 1, description: "This is an amazing cupcake extra EX2"},
  {name: "cupcake extra Ex3", price: 1, description: "This is an amazing cupcake extra EX3"},
  {name: "cupcake extra Ex4", price: 1, description: "This is an amazing cupcake extra EX4"},
  {name: "cupcake extra Ex5", price: 1, description: "This is an amazing cupcake extra EX5"},
  {name: "cupcake extra Ex6", price: 1, description: "This is an amazing cupcake extra EX6"},
  {name: "cupcake extra Ex7", price: 1, description: "This is an amazing cupcake extra EX7"},
  {name: "cupcake extra Ex8", price: 1, description: "This is an amazing cupcake extra EX8"},
  {name: "cupcake extra Ex9", price: 1, description: "This is an amazing cupcake extra EX9"},
  {name: "cupcake extra Ex10", price: 1, description: "This is an amazing cupcake extra EX10"}])
