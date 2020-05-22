def bubble_sort_by(my_var)
  my_var.each do
    x = 0
    y = 1
    until y == my_var.size
      comparison = yield(my_var[x], my_var[y])
      my_var.insert(x, my_var.delete_at(y)) if comparison.positive?
      x += 1
      y += 1
    end
  end
end
my_var = %w[hello friends worlds hi complicated bye]
bubble_sort_by(my_var) { |str1, str2| str1.length - str2.length }
