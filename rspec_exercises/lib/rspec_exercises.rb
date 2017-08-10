class Array
  def my_uniq
    count = Hash.new(0)

    self.each do |el|
      count[el] += 1
    end

    count.keys.sort
  end

  def two_sum
    i = 0
    array = []
    while i < self.length
      i2 = i + 1
      while i2 < self.length
        if self[i] + self[i2] == 0
          array << [i, i2]
        end
        i2 += 1
      end
      i += 1
    end
    array
  end

  def my_transpose
    each_with_index
  end

end
