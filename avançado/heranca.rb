class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} esta pronto para iniciar o trajeto"
    end

    def buzinar
        puts 'Beep! Beep!'
    end
end

class Carro < Veiculo
    

    def dirigir
        puts "#{nome} está dirigindo"
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} está pilotando"
    end
end

civic = Carro.new('Civic', 'Honda', 'S1')
puts civic.nome

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.dirigir