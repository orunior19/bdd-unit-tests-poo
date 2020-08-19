require_relative '../../app/bank'

# @ torna a variável global
# Suite de Testes da funcionalidade SAQUE
# context < cenários
describe ContaPoupanca do

    describe 'Saque' do
        context 'quando o saldo é suficiente' do
            before(:all) do
                @conta_poupanca = ContaPoupanca.new(1000.00)
                @conta_poupanca.saca(200.00)
            end
            it 'entao atualiza o saldo' do
                expect(@conta_poupanca.saldo).to eql 798.00
            end
        end
        
        context 'quando o saldo é zero' do
            before(:all) do
                @conta_poupanca = ContaPoupanca.new(0)
                @conta_poupanca.saca(100)
            end
            it 'então exibe mensagem' do
                expect(@conta_poupanca.mensagem).to eql "Saldo insuficiente para saque :("
            end
            it 'e o saldo permance zerado' do
                expect(@conta_poupanca.saldo).to eql 0
            end
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @saldo_atual = 300.00
                @conta_poupanca = ContaPoupanca.new(@saldo_atual)
                @conta_poupanca.saca(300.01)
            end
            it 'então exibe mensagem' do
                expect(@conta_poupanca.mensagem).to eql "Saldo insuficiente para saque :("
            end
            it 'e o saldo permanece' do
                expect(@conta_poupanca.saldo).to eql @saldo_atual
            end
        end

        context 'quando excede o limite do saque' do
            before(:all) do
                @saldo_atual = 1000.00
                @conta_poupanca = ContaPoupanca.new(@saldo_atual)
                @conta_poupanca.saca(500.01)
            end
            it 'então exibe a mensagem' do
                expect(@conta_poupanca.mensagem).to eql "Limite máximo por saque é de R$ 500,00"
            end
            it 'e o saldo permanece' do
                expect(@conta_poupanca.saldo).to eql @saldo_atual
            end
        end
    end
end