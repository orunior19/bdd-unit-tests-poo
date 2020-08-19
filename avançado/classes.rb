class Conta
    attr_accessor :id_conta
    attr_accessor :titular
    attr_accessor :cpf
    attr_accessor :saldo
    attr_accessor :status

    def initialize(titular, cpf, id)
        self.id_conta = id
        self.titular = titular
        self.cpf = cpf
        self.saldo = 0.0
        self.status = true
    end

    def obj_to_string()
        conta = "
            ID: #{self.id_conta}
            Titular: #{self.titular}
            CPF: #{self.cpf}
            Saldo: #{self.saldo}
            Status: #{self.status}
            "
        conta
    end

    def fechar_conta
        if self.status and self.saldo == 0
            puts 'Fehando Conta...'
            self.status = false
        else
            puts "A conta não pode ser fechada pois o saldo é: #{self.saldo}"
        end
    end

    def depositar(valor)
        puts "Depositando a quantia de #{valor} reais..."
        self.saldo += valor
        puts "Seu novo saldo é de #{self.saldo}"
    end
end

conta = Conta.new('Junior Souza', 40209665831, 1)

puts conta.obj_to_string()
puts '###'
conta.depositar(100.00)

puts conta.obj_to_string()

conta.depositar(10.00)
conta.fechar_conta
puts conta.obj_to_string()