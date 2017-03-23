class String

    define_method(:word_count) do |search|
      split_input = self.split(' ')
      count = 0

        split_input.each() do |word|
          if word==search
            count += 1
          end
        end

    return count
    end





    define_method(:word_count2) do |search2|
    return self.scan(search2).length()
    end
    #   split_input = self.split(' ')
    #
    #   count2 = 0
    #
    #     split_input.each() do |word2|
    #       if word2.slice!(0,(search2.length()))==search2
    #         count2 += 1
    #       end
    #     end
    #
    # return count2
    # end

end
