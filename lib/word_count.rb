class String

    define_method(:word_count) do |search|
      split_input = self.split(' ')
      count = 0

        split_input.each() do |word|
          if word==search
            return count += 1
          end
        end


    end


end
