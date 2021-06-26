module CTC21
import BenchmarkTools
export greet, euclid, extended_euclid, fermat_factor, mod_exp, leibniz_test

greet() = print("Hello World!")

function euclid(a::Int64, b::Int64)::Int64

    if b > a
        tmp = a
        a = b
        b = tmp
    end

    while b > 0
        tmp = b
        b = a % b
        a = tmp
    end

    return a
end

"""
Extended Euclidean Algorithm

- Return: an array of ints containing the greatest common denominator and the solutions `(x, y)` to `a*x + b*y = c`,
if `c` is divisible by `gcd(a, b)`. If `c` is not divisible, then it returns [NaN, NaN, NaN].

"""
function extended_euclid(a::Int64, b::Int64, c::Int64)
    x, s = 1, 0
    y, t = 0, 1

    if b > a
        tmp = a
        a = b
        b = tmp
    end

    gcd = euclid(a, b)
    if c % gcd != 0
        println("Não há solução")
        return [NaN, NaN, NaN]
    else
        c_prime = c / gcd
        while b > 0
            q = div(a, b)

            tmp = b; b = a - q*b; a = tmp

            tmp = s; s = x - q*s; x = tmp

            tmp = t; t = y - q*s; y = tmp
        end
        return [gcd, c_prime*x, c_prime*y]
    end
end

function fermat_factor(N::Int64)
    a = ceil(Int64, sqrt(N))
    b = sqrt(a^2 - N)
    while floor(Int64, b) != ceil(Int64, b)
        a += 1
        b = sqrt(a^2 - N)
    end
    return [a - b, a + b]
end

function mod_exp(base::Int64, expon::Int64, n::Int64)::Int64
    if n == 1
        return 0
    end
    c = 1
    for e_prime = 1:expon
        c = mod(c * base, n)
    end
    return c
end # function

function leibniz_test(base::Int64, n::Int64)::Bool
    for a = 2:base
        if mod_exp(a, n-1, n) != 1
            return false
        end
    end
    return true
end # function

end # module
