# @param {Integer} n
# @return {Integer}
def fib(n)
    return n if n < 2

    fib(n - 1) + fib(n - 2)
end