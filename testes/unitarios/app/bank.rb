class Conta
	attr_accessor :saldo, :mensagem

	def initialize(saldo)
		self.saldo = saldo
	end

	def saca(valor, valor_max, taxa)
		if valor <= valor_max
			if self.saldo >= valor
				self.saldo -= (valor + taxa)
			else
				self.mensagem = 'Saldo insuficiente para saque :('
			end
		else
			self.mensagem = "Limite máximo por saque é de R$ #{valor_max}"
		end
	end
end

# Classe desenvolvida orientada pelos cenários de testes da funcionalidade SAQUE
class ContaCorrente < Conta
	def saca(valor, valor_max = 700, taxa = 5.00)
		super
	end
end

class ContaPoupanca < Conta
	def saca(valor, valor_max = 500, taxa = 2.00)
		super
	end
end