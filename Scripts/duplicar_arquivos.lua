#Anthony Eu te amo

local arquivo_origem = "C:/Users/marco/Documents/GitHub/Guia_Rapido_Insano_Do_Wilderfeast/Scripts/todos_os_tracos.txt"

local f = io.open(arquivo_origem, "r")

if not f then
    print("Erro: O arquivo '" .. arquivo_origem .. "' não foi encontrado.")
    return
end


for linha in f:lines() do

    local primeira_palavra = linha:match("^(%S+)")

    if primeira_palavra then

        local nome_novo_arquivo = primeira_palavra .. ".md"


        local novo_f = io.open(nome_novo_arquivo, "w")

        if novo_f then
            novo_f:write(linha)
            novo_f:close()
            print("Salvo: " .. nome_novo_arquivo)
        else
            print("Erro ao criar o arquivo: " .. nome_novo_arquivo)
        end
    end
end

f:close()
print("Processo concluído!")
