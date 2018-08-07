require 'colorize'

puts "\nReto 5 de Ruby, bienvenido a reto 5, para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
print "\nIngresa tu nombre: "
player = gets
puts "\nHola #{player} ".colorize(:blue)
print "Ingresa la cantidad de vidas que quieres tener: "

lifes = gets.chomp.to_i
count = 0
question = 0
correct = 0
error = 0
life = 1
text = File.readlines("questionandanswer.txt")

until lifes < life do

  if count <= 6
    puts "\nPregunta: #{text[question]}"
    print "Respuesta: "
    player_answer = gets.downcase.chomp

  	if player_answer == text[question+1].chomp
  		puts "\nFelicidades, respuesta correcta".colorize(:cyan)
      question += 2
  		correct += 1
      count += 2
  	else
  		puts "\nLa respuesta no es correcta, tienes #{lifes-life} oportunidades para responder correctamente".colorize(:red)
  		error += 1
      life += 1
  	end
  else
    lifes = 0
  end
end

puts "\nTerminaste el juego #{player}, tus aciertos fueron #{correct}. Fallaste #{error} veces, gracias por jugar!!!!!!".colorize(:blue)
