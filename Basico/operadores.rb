numero1 = 0
numero2 = 0
total = 0

puts 'Informe o numero 1:'
numero1 = gets.chomp.to_i
# chomp solicita input do user e faz cast para string por padrão
# soma de strings concatena

puts 'Informe o numero 2:'
numero2 = gets.chomp.to_i

puts total = numero1 + numero2

# operadores de comparação
# >, <, >=, <=, ==, !=, eql?.()

v1 = 10
v2 = 11

puts v1 + "É igual a " + v2 + " = " + v1.eql?(v2)