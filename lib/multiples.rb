def sum_of_3_and_5_multiples(number)
    i = 0
    multiples_3 = multiples_5 = 0
    while i < number
        if i % 3 == 0
            multiples_3 += i
        elsif i % 5 == 0
            multiples_5 += i
        end
        i += 1
    end
    multiples_3.to_i + multiples_5.to_i
end