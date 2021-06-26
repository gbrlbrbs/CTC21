using CTC21

function cap6_questao1()
    println("Questão 1:")
    println("343 passou em todos os testes? ", leibniz_test(5, 343))
    println("347 passou em todos os testes? ", leibniz_test(10, 347))
end

function cap6_questao3()
    println("Questão 3:")
    numbers = [567, 645, 701]
    for n in numbers
        ltest = leibniz_test(5, n)
        println(n, " é primo? ", ltest)
        if mod_exp(2, n-1, n) == 1 && !ltest
            println(n, " é pseudoprimo na base 2")
        end
        if mod_exp(3, n-1, n) == 1 && !ltest
            println(n, " é pseudoprimo na base 3")
        end
    end

end
