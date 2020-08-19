lenguage: pt

Estória: Saque no Caixa Eletrônico
    Sendo um cliente que é correntista do NewBank
    Posso sacar dinheiro
    Para que eu consiga comprar em lugares que não aceitam débido ou crédito. (Mesmo sendo século 21 rs)

Cenário: Saque em conta corrente
    Dado que que eu tenho R$ 1000,00 em minha conta corrente
    Quando faço um saque de R$ 200,00
    Então meu saldo final deve ser R$ 800,00

Cenário: Saldo insuficiente
    Dado que tenho R$ 0,00 em minha conta corrente
    Quando faço um saque de R$ 100,00
    Então vejo a mensagem "Saldo insuficiente para saque :("
    E meu saldo final deve ser R$ 0,00

Cenário: Tenho saldo mas não o suficiente
    Dado que eu tenho R$ 500,00 em minha conta corrente
    Quando faço um saque de R$ 500,01
    Então vejo a mensagem "Saldo insuficiente para saque :("
    E meu saldo final deve ser R$ 500,00

Cenário: Limite por saque
    Dado que eu tenho R$ 1000,00 em minha conta corrente
    Quando eu faço um saque de R$ 701,00
    Então vejo a mensagem "Limite máximo por saque é de R$ 700,00"
    E meu saldo final deve ser R$ 1000,00