def diga_ola(nome)
    puts 'Olá ' + nome
end

diga_ola("Junior Souza!")

# Metodos com retorno é o ultimo valor definido dentro do metodo
def retorna_nome
    'Junior Souza'
end

nome = retorna_nome
puts nome

def soma(v1, v2)
    total = v1 + v2
    total
end

res = soma(10, 25)
puts res