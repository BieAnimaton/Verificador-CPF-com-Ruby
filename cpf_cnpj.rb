require "cpf_cnpj"

def verif(cpf_cnpj)
    if (CPF.valid?(cpf_cnpj))
        puts "O CPF / CNPJ #{cpf_cnpj} está certo"

        cpf_cnpj_formatado = CPF.new(cpf_cnpj)
        cpf_cnpj_formatado.formatted
        
        puts "Seu CPF / CNPJ formatado é #{cpf_cnpj_formatado}"
    else
        puts "O CPF / CNPJ #{cpf_cnpj} está errado"
    end
end

print 'Digite seu número CPF ou CNPJ: '
cpf_cnpj = gets.chomp

verif(cpf_cnpj)
puts CPF.generate