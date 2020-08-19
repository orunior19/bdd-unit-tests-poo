5.times do |i|
    puts 'Repetindo por times: ' + i.to_s + ' vezes...'
end

init = 0

while init <= 10 do
    puts 'Repetindo while init: ' + init.to_s + ' vezes...'
    init += 1
end

for item in (0...10)
    puts 'Repetindo item for: ' + item.to_s + ' vezes...'
end

vingadores = ['Ironman', 'Hulk', 'Spiderman', 'Thor']

puts vingadores.class

vingadores.each do |vingador|
    puts vingador
end