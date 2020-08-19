require_relative '../../app/bank'

# @ torna a variável global
# Suite de Testes da funcionalidade SAQUE
# context < cenários
describe ContaCorrente do

    describe 'Saque' do
        context 'quando o saldo é suficiente' do
            before(:all) do
                @conta_corrente = ContaCorrente.new(1000.00)
                @conta_corrente.saca(200.00)
            end
            it 'entao atualiza o saldo' do
                expect(@conta_corrente.saldo).to eql 795.00
            end
        end
        
        context 'quando o saldo é zero' do
            before(:all) do
                @conta_corrente = ContaCorrente.new(0)
                @conta_corrente.saca(100)
            end
            it 'então exibe mensagem' do
                expect(@conta_corrente.mensagem).to eql "Saldo insuficiente para saque :("
            end
            it 'e o saldo permance zerado' do
                expect(@conta_corrente.saldo).to eql 0
            end
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @saldo_atual = 500.00
                @conta_corrente = ContaCorrente.new(@saldo_atual)
                @conta_corrente.saca(500.01)
            end
            it 'então exibe mensagem' do
                expect(@conta_corrente.mensagem).to eql "Saldo insuficiente para saque :("
            end
            it 'e o saldo permanece' do
                expect(@conta_corrente.saldo).to eql @saldo_atual
            end
        end

        context 'quando excede o limite do saque' do
            before(:all) do
                @saldo_atual = 1000.00
                @conta_corrente = ContaCorrente.new(@saldo_atual)
                @conta_corrente.saca(700.01)
            end
            it 'então exibe a mensagem' do
                expect(@conta_corrente.mensagem).to eql "Limite máximo por saque é de R$ 700,00"
            end
            it 'e o saldo permanece' do
                expect(@conta_corrente.saldo).to eql @saldo_atual
            end
        end
    end
end