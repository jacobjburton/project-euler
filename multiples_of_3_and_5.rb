#########################################################################
# Multiples of 3 and 5                                                  #
#                                                                       #
# If we list all of the natural numbers below 10 that are multiples     #
# of 3 and 5, we get 3, 5, 6, and 9.  The sum of these multiples is 23  #
#                                                                       #
# Find the sum of all the multiples of 3 or 5 below 1000                #
#########################################################################

# solution 1
# class Multiples
    
#     def multiples_of_3_and_5
#         multiples = []
#         numbers = Array(1...1000)
#         for i in numbers
#             if i % 3 == 0 || i % 5 == 0
#                 multiples.push(i)
#             end
#         end
#         multiples
#     end

#     def sum_of_multiples(multiples)
#         total = 0
#         multiples.each { |i| total += i }
#         puts(total)
#     end

# end

# multiples = Multiples.new
# multiples.sum_of_multiples(multiples.multiples_of_3_and_5)


# solution 2
# puts (1...1000).select { |i| i % 3 == 0 || i % 5 == 0 }.reduce(&:+)

class Multiples

    def multiples
        multiples = (1...1000).select { |i| i % 3 == 0 || i % 5 == 0 }
    end

    def sumMultiples(multiples)
        puts multiples.reduce(&:+)
    end
end

multiples = Multiples.new
multiples.sumMultiples(multiples.multiples)

#solution 3
# class Multiples

#     def multiples
#         (1..999).select do |i|
#             i % 3 == 0 || i % 5 == 0
#         end
#     end

#     def sumMultiples(multiples)
#         puts total = multiples.inject(&:+)
#     end

# end

# multiples = Multiples.new
# multiples.sumMultiples(multiples.multiples)
