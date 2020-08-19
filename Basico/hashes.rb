# Hashe é um objeto que contem uma coleção de dados
# É diferente de array pois array tem indice e valor
# Hashes tem chave e valor.
# É semelhante a sintaxe da estrutura de dados do JSON

carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'Vermelho']

carro[:modelo] = 'SI'

puts carro