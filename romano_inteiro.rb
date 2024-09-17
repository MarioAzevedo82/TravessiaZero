def romano_para_inteiro(romano)
    valores = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }
    
    inteiro = 0
    i = 0

    while i < romano.length
        atual = valores[romano[i]]
        proximo = valores[romano[i + 1]] if i + 1 < romano.length

        if proximo && atual < proximo
            inteiro += proximo - atual
            i += 2
        else
            inteiro += atual
            i += 1
        end
    end

    inteiro
end

puts romano_para_inteiro("XXX")