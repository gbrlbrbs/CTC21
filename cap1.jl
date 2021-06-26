using CTC21

function cap1_questao1()
    println("Respostas da questão 1:")
    # item a)
    answ = euclid(35, 14)
    println("item a): ", answ)
    # item b)
    answ = euclid(252, 180)
    println("item b): ", answ)
    # item c)
    answ = euclid(6643, 2873)
    println("item c): ", answ)
    # item d)
    answ = euclid(272828282, 3242)
    println("item d): ", answ)
end

function cap1_questao2()
    println("Testes da questão 2:")
    println("(a, b, c) = (35, 14, 15), resposta esperada: Não há solução")
    println("Resposta: ")
    println(extended_euclid(35, 14, 15))
    println("(a, b, c) = (35, 14, 14), resposta esperada: [gcd, x, y] = [7.0, 2.0, -4.0]")
    println("Resposta: ")
    println(extended_euclid(35, 14, 14))
end
