def bubble_sort_by(my_var)
  my_var.each do
    x = 0
    y = 1
    until y == my_var.size
      comparison = yield(my_var[x], my_var[y])
      if comparison.positive?
        my_var.insert(x, my_var.delete_at(y))
        puts 'ordering'
        puts ''
        puts my_var
        puts ''
      end
    x += 1
    y += 1
    end
  end
end
my_var = %w[hello friends worlds hi complicated bye]
print bubble_sort_by(my_var) { |str1, str2| str1.length - str2.length }
