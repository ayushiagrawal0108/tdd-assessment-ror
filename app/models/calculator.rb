class Calculator
    def self.add(numbers)
      return 0 if numbers.empty?
      delimiter = ','
      if numbers.start_with?("//")
        delimiter = numbers[2]
        numbers = numbers[(numbers.index("\n") + 1)..-1]
      end

      num_array = numbers.split(/#{delimiter}|\n/)
      num_array.map(&:to_i).sum
    end
end
  