import Pkg
Pkg.activate(pwd())
using CTC21

include("cap1.jl")
include("cap2.jl")
include("cap4.jl")
include("cap5.jl")
include("cap6.jl")



println("Respostas do capítulo 1:")
cap1_questao1()
cap1_questao2()
println("Respostas do capítulo 2:")
cap2_questao1()
println("Respostas do capítulo 4:")
cap4_questao8()
println("Respostas do capítulo 5:")
cap5_questao3()
println("Respostas do capítulo 6:")
cap6_questao1()
cap6_questao3()
