# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque no Ruby tudo é objeto

# Classe

# Carro (Nome, Marca, Modelo, Cor, Quantidade de Portas, etc...)

# Ligar, Businar, Parar, etc...

class Carro
    
    attr_accessor :nome
    attr_accessor :marca
    attr_accessor :modelo
    attr_accessor :cor
    attr_accessor :quantidade_portas
        
    def ligar
        puts 'Carro Ligado'
    end
end

carro = Carro.new
carro.nome = 'Civic'
puts carro.class

carro.ligar
puts carro.nome
