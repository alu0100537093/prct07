require_relative 'fraccion.rb'


f1 = Fraccion.new(4,8)

puts "PRACTICA 6 MAIN"
puts "---------------"
puts "    "

puts "Fraccion en formato a/b"

puts "#{f1.mostrar}"

puts "Fraccion en formato flotante"

puts "#{f1.mostrar_float}"


puts "Comparacion de fracciones"

print "¿ #{f1.mostrar} == 4/8? --> " 

if (f1 == Fraccion.new(4,8))
  
  print "true"
  
else
  
  print "false"
  
end

  puts " "


puts "Valor absoluto de una fracción"

puts "#{f1.abs.mostrar}"


puts "Reciproco de una fraccion"

puts "#{f1.reciprocal.mostrar}"


puts "Opuesto de una fraccion"

puts "#{f1.opuesto.mostrar}"


puts "Suma de fracciones"

puts "#{(f1 + Fraccion.new(5,6)).mostrar}"


puts "Resta de fracciones"

puts "#{(f1 - Fraccion.new(1,4)).mostrar}"


puts "Producto de fracciones"

puts "#{(f1 * Fraccion.new(7,4)).mostrar}"


puts "Division de fracciones"

puts "#{(f1 / Fraccion.new(2,5)).mostrar}"

puts "Resto de dos fracciones"

puts "#{f1 % Fraccion.new(5,4)}"

puts "Comparacion <"


print "¿#{f1.mostrar} < 3/5? --> " 

if (f1 < Fraccion.new(3,5))

  print "true"
  
 else
   
   print false
   
   
end

puts " "
  
puts "Comparacion >"


print "¿#{f1.mostrar} > 3/5? --> " 

if (f1 > Fraccion.new(3,5))

  print "true"
  
 else
   
   print "false"
   
   
end

puts " "
  
puts "Comparacion <="


print "¿#{f1.mostrar} <= 3/5? --> " 

if (f1 <= Fraccion.new(3,5))

  print "true"
  
 else
   
   print "false"
   
   
end

puts " "
  
puts "Comparacion >="


print "¿#{f1.mostrar} >= 3/5? --> " 

if (f1 >= Fraccion.new(3,5))

  print "true"
  
 else
   
   print "false"
   
   
end

puts "     "

puts "-----"

puts "      "

puts "Programado por Jazer Abreu Chinea y Daniel Luis Martin"
