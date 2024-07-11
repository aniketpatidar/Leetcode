# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    output = []
    for i in 1..n do
        if i%3 == 0 && i%5 == 0
            output << "FizzBuzz"
        elsif i%3 == 0
            output << "Fizz"
        elsif i%5 ==0
            output << "Buzz"
        else
            output << i.to_s
        end
    end
    output
end